import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../repositories/database_providers.dart';

class TrabajoViewModel extends AsyncNotifier<List<TrabajosRealizado>> {
  @override
  Future<List<TrabajosRealizado>> build() {
    return ref.watch(trabajoRepositoryProvider).observarTrabajos().first;
  }

  // Registrar un trabajo realizado.
  Future<void> registrarTrabajo({
    required int ordenId,
    required String descripcion,
    required double costoManoObra,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(trabajoRepositoryProvider);

      await repository.registrarTrabajo(
        ordenId: ordenId,
        descripcion: descripcion,
        costoManoObra: costoManoObra,
      );

      return repository.obtenerTrabajos();
    });
  }

  // Actualizar un trabajo.
  Future<void> actualizarTrabajo({
    required int id,
    required String descripcion,
    required double costoManoObra,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(trabajoRepositoryProvider);

      await repository.actualizarTrabajo(
        id: id,
        descripcion: descripcion,
        costoManoObra: costoManoObra,
      );

      return repository.obtenerTrabajos();
    });
  }

  // Eliminar un trabajo.
  Future<void> eliminarTrabajo(int id) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(trabajoRepositoryProvider);

      await repository.eliminarTrabajo(id);

      return repository.obtenerTrabajos();
    });
  }

  // Calcular la mano de obra de una orden.
  Future<double> calcularManoObra(int ordenId) {
    return ref.read(trabajoRepositoryProvider).calcularManoObra(ordenId);
  }

  // Recargar los trabajos.
  Future<void> cargarTrabajos() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() {
      return ref.read(trabajoRepositoryProvider).obtenerTrabajos();
    });
  }
}

final trabajoViewModelProvider =
    AsyncNotifierProvider<TrabajoViewModel, List<TrabajosRealizado>>(
      TrabajoViewModel.new,
    );
