import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../repositories/database_providers.dart';

class EquipoViewModel extends AsyncNotifier<List<Equipo>> {
  @override
  Future<List<Equipo>> build() {
    return ref.watch(equipoRepositoryProvider).obtenerEquipos();
  }

  Future<void> registrarEquipo({
    required String tipo,
    required String marca,
    required String modelo,
    required String numeroSerie,
    required int clienteId,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(equipoRepositoryProvider);

      await repository.registrarEquipo(
        tipo: tipo,
        marca: marca,
        modelo: modelo,
        numeroSerie: numeroSerie,
        clienteId: clienteId,
      );

      return repository.obtenerEquipos();
    });
  }

  Future<void> actualizarEquipo({
    required int id,
    required String tipo,
    required String marca,
    required String modelo,
    required String numeroSerie,
    required int clienteId,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(equipoRepositoryProvider);

      await repository.actualizarEquipo(
        id: id,
        tipo: tipo,
        marca: marca,
        modelo: modelo,
        numeroSerie: numeroSerie,
        clienteId: clienteId,
      );

      return repository.obtenerEquipos();
    });
  }

  Future<void> eliminarEquipo(int id) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(equipoRepositoryProvider);

      await repository.eliminarEquipo(id);

      return repository.obtenerEquipos();
    });
  }

  Future<void> cargarEquipos() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() {
      return ref.read(equipoRepositoryProvider).obtenerEquipos();
    });
  }
}

final equipoViewModelProvider =
    AsyncNotifierProvider<EquipoViewModel, List<Equipo>>(EquipoViewModel.new);
