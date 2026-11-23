import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../repositories/database_providers.dart';

class HistorialViewModel extends AsyncNotifier<List<OrdenesReparacionData>> {
  @override
  Future<List<OrdenesReparacionData>> build() {
    return ref.watch(historialRepositoryProvider).obtenerOrdenes();
  }

  // Obtener una orden específica.
  Future<OrdenesReparacionData?> obtenerOrden(int id) {
    return ref.read(historialRepositoryProvider).obtenerOrden(id);
  }

  // Consultar los trabajos realizados en una orden.
  Future<List<TrabajosRealizado>> obtenerTrabajos(int ordenId) {
    return ref.read(historialRepositoryProvider).obtenerTrabajos(ordenId);
  }

  // Consultar los repuestos utilizados en una orden.
  Future<List<RepuestosUsado>> obtenerRepuestosUtilizados(int ordenId) {
    return ref
        .read(historialRepositoryProvider)
        .obtenerRepuestosUtilizados(ordenId);
  }

  // Calcular el costo de mano de obra.
  Future<double> calcularManoObra(int ordenId) {
    return ref.read(historialRepositoryProvider).calcularManoObra(ordenId);
  }

  // Recargar el historial.
  Future<void> cargarHistorial() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() {
      return ref.read(historialRepositoryProvider).obtenerOrdenes();
    });
  }
}

final historialViewModelProvider =
    AsyncNotifierProvider<HistorialViewModel, List<OrdenesReparacionData>>(
      HistorialViewModel.new,
    );
