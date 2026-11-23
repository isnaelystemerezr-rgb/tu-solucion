import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../repositories/database_providers.dart';

class InventarioViewModel extends AsyncNotifier<List<Repuesto>> {
  @override
  Future<List<Repuesto>> build() {
    return ref.watch(inventarioRepositoryProvider).observarRepuestos().first;
  }

  // Registrar un repuesto.
  Future<void> registrarRepuesto({
    required String nombre,
    required String codigo,
    required double precio,
    required int stockActual,
    required int stockMinimo,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(inventarioRepositoryProvider);

      await repository.registrarRepuesto(
        nombre: nombre,
        codigo: codigo,
        precio: precio,
        stockActual: stockActual,
        stockMinimo: stockMinimo,
      );

      return repository.obtenerRepuestos();
    });
  }

  // Actualizar un repuesto.
  Future<void> actualizarRepuesto({
    required int id,
    required String nombre,
    required String codigo,
    required double precio,
    required int stockActual,
    required int stockMinimo,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(inventarioRepositoryProvider);

      await repository.actualizarRepuesto(
        id: id,
        nombre: nombre,
        codigo: codigo,
        precio: precio,
        stockActual: stockActual,
        stockMinimo: stockMinimo,
      );

      return repository.obtenerRepuestos();
    });
  }

  // Aumentar las existencias.
  Future<void> aumentarStock({required int id, required int cantidad}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(inventarioRepositoryProvider);

      await repository.aumentarStock(id: id, cantidad: cantidad);

      return repository.obtenerRepuestos();
    });
  }

  // Registrar el uso de un repuesto en una reparación.
  Future<void> registrarUso({
    required int ordenId,
    required int repuestoId,
    required int cantidad,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(inventarioRepositoryProvider);

      await repository.registrarUso(
        ordenId: ordenId,
        repuestoId: repuestoId,
        cantidad: cantidad,
      );

      return repository.obtenerRepuestos();
    });
  }

  // Consultar los repuestos con existencias bajas.
  Future<List<Repuesto>> obtenerStockBajo() {
    return ref.read(inventarioRepositoryProvider).obtenerStockBajo();
  }

  // Eliminar un repuesto.
  Future<void> eliminarRepuesto(int id) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(inventarioRepositoryProvider);

      await repository.eliminarRepuesto(id);

      return repository.obtenerRepuestos();
    });
  }

  // Recargar el inventario.
  Future<void> cargarInventario() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() {
      return ref.read(inventarioRepositoryProvider).obtenerRepuestos();
    });
  }
}

final inventarioViewModelProvider =
    AsyncNotifierProvider<InventarioViewModel, List<Repuesto>>(
      InventarioViewModel.new,
    );
