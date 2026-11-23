import 'package:drift/drift.dart';

import '../data/db/app_database.dart';

class RepuestoUsadoDao {
  final AppDatabase db;

  RepuestoUsadoDao(this.db);

  // Obtener todos los repuestos utilizados.
  Future<List<RepuestosUsado>> obtenerTodos() {
    return db.select(db.repuestosUsados).get();
  }

  // Observar los repuestos utilizados.
  Stream<List<RepuestosUsado>> observarTodos() {
    return db.select(db.repuestosUsados).watch();
  }

  // Obtener los repuestos utilizados en una orden.
  Future<List<RepuestosUsado>> obtenerPorOrden(int ordenId) {
    return (db.select(
      db.repuestosUsados,
    )..where((uso) => uso.ordenId.equals(ordenId))).get();
  }

  // Registrar el uso de un repuesto y descontarlo del inventario.
  Future<int> registrarUso({
    required int ordenId,
    required int repuestoId,
    required int cantidad,
  }) async {
    if (cantidad <= 0) {
      throw ArgumentError('La cantidad debe ser mayor que cero.');
    }

    return db.transaction(() async {
      final repuesto = await (db.select(
        db.repuestos,
      )..where((r) => r.id.equals(repuestoId))).getSingleOrNull();

      if (repuesto == null) {
        throw Exception('El repuesto no existe.');
      }

      if (repuesto.stockActual < cantidad) {
        throw Exception('No hay suficiente stock disponible.');
      }

      final id = await db
          .into(db.repuestosUsados)
          .insert(
            RepuestosUsadosCompanion.insert(
              ordenId: ordenId,
              repuestoId: repuestoId,
              cantidad: Value(cantidad),
            ),
          );

      await (db.update(
        db.repuestos,
      )..where((r) => r.id.equals(repuestoId))).write(
        RepuestosCompanion(stockActual: Value(repuesto.stockActual - cantidad)),
      );

      return id;
    });
  }

  // Eliminar un registro de uso y devolver las piezas al inventario.
  Future<void> eliminarUso(int id) async {
    await db.transaction(() async {
      final uso = await (db.select(
        db.repuestosUsados,
      )..where((r) => r.id.equals(id))).getSingleOrNull();

      if (uso == null) return;

      final repuesto = await (db.select(
        db.repuestos,
      )..where((r) => r.id.equals(uso.repuestoId))).getSingleOrNull();

      if (repuesto != null) {
        await (db.update(
          db.repuestos,
        )..where((r) => r.id.equals(uso.repuestoId))).write(
          RepuestosCompanion(
            stockActual: Value(repuesto.stockActual + uso.cantidad),
          ),
        );
      }

      await (db.delete(db.repuestosUsados)..where((r) => r.id.equals(id))).go();
    });
  }
}
