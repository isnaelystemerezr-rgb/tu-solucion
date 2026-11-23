import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final modulos = [
      {
        'titulo': 'Clientes',
        'descripcion': 'Administrar clientes',
        'icono': Icons.people_alt,
        'ruta': '/clientes',
        'color': Colors.blue,
      },
      {
        'titulo': 'Equipos',
        'descripcion': 'Administrar dispositivos',
        'icono': Icons.devices,
        'ruta': '/equipos',
        'color': Colors.teal,
      },
      {
        'titulo': 'Órdenes',
        'descripcion': 'Gestionar reparaciones',
        'icono': Icons.build,
        'ruta': '/ordenes',
        'color': Colors.orange,
      },
      {
        'titulo': 'Técnicos',
        'descripcion': 'Administrar técnicos',
        'icono': Icons.engineering,
        'ruta': '/tecnicos',
        'color': Colors.purple,
      },
      {
        'titulo': 'Inventario',
        'descripcion': 'Controlar repuestos',
        'icono': Icons.inventory_2,
        'ruta': '/inventario',
        'color': Colors.green,
      },
      {
        'titulo': 'Historial',
        'descripcion': 'Consultar reparaciones',
        'icono': Icons.history,
        'ruta': '/historial',
        'color': Colors.indigo,
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Tu Solution'), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Panel principal',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Bienvenido al sistema de gestión del taller.',
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 24),

              const Text(
                'Módulos del sistema',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: modulos.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.15,
                ),
                itemBuilder: (context, index) {
                  final modulo = modulos[index];

                  return Card(
                    elevation: 2,
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () {
                        context.go(modulo['ruta'] as String);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              modulo['icono'] as IconData,
                              size: 36,
                              color: modulo['color'] as Color,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              modulo['titulo'] as String,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              modulo['descripcion'] as String,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 24),

              Card(
                color: Colors.orange.shade50,
                child: const ListTile(
                  leading: Icon(
                    Icons.notifications_active,
                    color: Colors.orange,
                    size: 30,
                  ),
                  title: Text(
                    'Alertas de inventario',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Aquí mostraremos los repuestos con existencias bajas.',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
