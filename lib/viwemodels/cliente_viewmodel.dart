import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../repositories/database_providers.dart';

class ClienteViewModel extends AsyncNotifier<List<Cliente>> {
  @override
  Future<List<Cliente>> build() {
    return ref.watch(clienteRepositoryProvider).obtenerClientes();
  }

  Future<void> registrarCliente({
    required String nombre,
    required String telefono,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(clienteRepositoryProvider);

      await repository.registrarCliente(nombre: nombre, telefono: telefono);

      return repository.obtenerClientes();
    });
  }

  Future<void> actualizarCliente({
    required int id,
    required String nombre,
    required String telefono,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(clienteRepositoryProvider);

      await repository.actualizarCliente(
        id: id,
        nombre: nombre,
        telefono: telefono,
      );

      return repository.obtenerClientes();
    });
  }

  Future<void> eliminarCliente(int id) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(clienteRepositoryProvider);

      await repository.eliminarCliente(id);

      return repository.obtenerClientes();
    });
  }

  Future<void> cargarClientes() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() {
      return ref.read(clienteRepositoryProvider).obtenerClientes();
    });
  }
}

final clienteViewModelProvider =
    AsyncNotifierProvider<ClienteViewModel, List<Cliente>>(
      ClienteViewModel.new,
    );
