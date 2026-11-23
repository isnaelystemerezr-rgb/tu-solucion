import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../repositories/database_providers.dart';

class OrdenViewModel extends AsyncNotifier<List<OrdenesReparacionData>> {
  @override
  Future<List<OrdenesReparacionData>> build() {
    return ref.watch(ordenRepositoryProvider).obtenerOrdenes();
  }

  // Registrar una nueva orden de reparación.
  Future<void> registrarOrden({
    required int equipoId,
    int? tecnicoId,
    required int estadoIndex,
    required String fallaReportada,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(ordenRepositoryProvider);

      await repository.registrarOrden(
        equipoId: equipoId,
        tecnicoId: tecnicoId,
        estadoIndex: estadoIndex,
        fallaReportada: fallaReportada,
      );

      return repository.obtenerOrdenes();
    });
  }

  // Cambiar el estado de una reparación.
  Future<void> actualizarEstado({
    required int id,
    required int estadoIndex,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(ordenRepositoryProvider);

      await repository.actualizarEstado(id: id, estadoIndex: estadoIndex);

      return repository.obtenerOrdenes();
    });
  }

  // Asignar una orden a un técnico.
  Future<void> asignarTecnico({
    required int ordenId,
    required int tecnicoId,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(ordenRepositoryProvider);

      await repository.asignarTecnico(ordenId: ordenId, tecnicoId: tecnicoId);

      return repository.obtenerOrdenes();
    });
  }

  // Actualizar la falla reportada.
  Future<void> actualizarFalla({required int id, required String falla}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(ordenRepositoryProvider);

      await repository.actualizarFalla(id: id, falla: falla);

      return repository.obtenerOrdenes();
    });
  }

  // Eliminar una orden.
  Future<void> eliminarOrden(int id) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(ordenRepositoryProvider);

      await repository.eliminarOrden(id);

      return repository.obtenerOrdenes();
    });
  }

  // Recargar las órdenes.
  Future<void> cargarOrdenes() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() {
      return ref.read(ordenRepositoryProvider).obtenerOrdenes();
    });
  }
}

final ordenViewModelProvider =
    AsyncNotifierProvider<OrdenViewModel, List<OrdenesReparacionData>>(
      OrdenViewModel.new,
    );
