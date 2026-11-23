import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../repositories/database_providers.dart';

class TecnicoViewModel extends AsyncNotifier<List<Tecnico>> {
  @override
  Future<List<Tecnico>> build() {
    return ref.watch(tecnicoRepositoryProvider).observarTecnicos().first;
  }

  Future<void> registrarTecnico(String nombre) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(tecnicoRepositoryProvider);

      await repository.registrarTecnico(nombre);

      return repository.obtenerTecnicos();
    });
  }

  Future<void> actualizarTecnico({
    required int id,
    required String nombre,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(tecnicoRepositoryProvider);

      await repository.actualizarTecnico(id: id, nombre: nombre);

      return repository.obtenerTecnicos();
    });
  }

  Future<void> eliminarTecnico(int id) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(tecnicoRepositoryProvider);

      await repository.eliminarTecnico(id);

      return repository.obtenerTecnicos();
    });
  }

  Future<void> cargarTecnicos() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() {
      return ref.read(tecnicoRepositoryProvider).obtenerTecnicos();
    });
  }
}

final tecnicoViewModelProvider =
    AsyncNotifierProvider<TecnicoViewModel, List<Tecnico>>(
      TecnicoViewModel.new,
    );
