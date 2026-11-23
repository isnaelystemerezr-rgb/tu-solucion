import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../viwemodels/cliente_viewmodel.dart';

class ClientesPage extends ConsumerWidget {
  const ClientesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clientesAsync = ref.watch(clienteViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Gestión de clientes')),
      body: clientesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 45),
              const SizedBox(height: 12),
              const Text('No se pudieron cargar los clientes'),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  ref.read(clienteViewModelProvider.notifier).cargarClientes();
                },
                child: const Text('Reintentar'),
              ),
            ],
          ),
        ),
        data: (clientes) {
          if (clientes.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.people_outline, size: 65, color: Colors.grey),
                  SizedBox(height: 12),
                  Text('Todavía no hay clientes registrados'),
                  SizedBox(height: 5),
                  Text('Pulsa + para registrar el primero'),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () {
              return ref
                  .read(clienteViewModelProvider.notifier)
                  .cargarClientes();
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: clientes.length,
              itemBuilder: (context, index) {
                final cliente = clientes[index];

                return Card(
                  child: ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.person)),
                    title: Text(cliente.nombre),
                    subtitle: Text('Teléfono: ${cliente.telefono}'),
                    trailing: PopupMenuButton<String>(
                      onSelected: (opcion) {
                        if (opcion == 'editar') {
                          _mostrarFormulario(context, ref, cliente: cliente);
                        } else if (opcion == 'eliminar') {
                          _confirmarEliminacion(context, ref, cliente);
                        }
                      },
                      itemBuilder: (context) => const [
                        PopupMenuItem(value: 'editar', child: Text('Editar')),
                        PopupMenuItem(
                          value: 'eliminar',
                          child: Text('Eliminar'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _mostrarFormulario(context, ref);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _mostrarFormulario(
    BuildContext context,
    WidgetRef ref, {
    Cliente? cliente,
  }) {
    final formKey = GlobalKey<FormState>();
    final nombreController = TextEditingController(text: cliente?.nombre ?? '');
    final telefonoController = TextEditingController(
      text: cliente?.telefono ?? '',
    );

    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(cliente == null ? 'Registrar cliente' : 'Editar cliente'),
          content: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: nombreController,
                    decoration: const InputDecoration(
                      labelText: 'Nombre completo',
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Introduce el nombre';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: telefonoController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Teléfono',
                      prefixIcon: Icon(Icons.phone),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Introduce el teléfono';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (!formKey.currentState!.validate()) return;

                final notifier = ref.read(clienteViewModelProvider.notifier);

                if (cliente == null) {
                  await notifier.registrarCliente(
                    nombre: nombreController.text.trim(),
                    telefono: telefonoController.text.trim(),
                  );
                } else {
                  await notifier.actualizarCliente(
                    id: cliente.id,
                    nombre: nombreController.text.trim(),
                    telefono: telefonoController.text.trim(),
                  );
                }

                if (dialogContext.mounted) {
                  Navigator.pop(dialogContext);
                }
              },
              child: const Text('Guardar'),
            ),
          ],
        );
      },
    ).then((_) {
      nombreController.dispose();
      telefonoController.dispose();
    });
  }

  void _confirmarEliminacion(
    BuildContext context,
    WidgetRef ref,
    Cliente cliente,
  ) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Eliminar cliente'),
          content: Text('¿Deseas eliminar a ${cliente.nombre}?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () async {
                await ref
                    .read(clienteViewModelProvider.notifier)
                    .eliminarCliente(cliente.id);

                if (dialogContext.mounted) {
                  Navigator.pop(dialogContext);
                }
              },
              child: const Text('Eliminar'),
            ),
          ],
        );
      },
    );
  }
}
