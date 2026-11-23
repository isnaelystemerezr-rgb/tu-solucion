import 'package:drift/drift.dart';

import '../data/db/app_database.dart';

class RepuestoDao {
  final AppDatabase db;

  RepuestoDao(this.db);

  // Obtener todos los repuestos.
  Future<List<Repuesto>> obtenerTodos() {
    return db.select(db.repuestos).get();
  }

  // Observar el inventario en tiempo real.
  Stream<List<Repuesto>> observarTodos() {
    return db.select(db.repuestos).watch();
  }

  // Buscar un repuesto por ID.
  Future<Repuesto?> obtenerPorId(int id) {
    return (db.select(
      db.repuestos,
    )..where((repuesto) => repuesto.id.equals(id))).getSingleOrNull();
  }

  // Buscar un repuesto por código.
  Future<Repuesto?> obtenerPorCodigo(String codigo) {
    return (db.select(
      db.repuestos,
    )..where((repuesto) => repuesto.codigo.equals(codigo))).getSingleOrNull();
  }

  // Obtener repuestos con stock bajo.
  Future<List<Repuesto>> obtenerStockBajo() {
    return (db.select(db.repuestos)..where(
          (repuesto) =>
              repuesto.stockActual.isSmallerOrEqual(repuesto.stockMinimo),
        ))
        .get();
  }

  // Observar repuestos con stock bajo.
  Stream<List<Repuesto>> observarStockBajo() {
    return (db.select(db.repuestos)..where(
          (repuesto) =>
              repuesto.stockActual.isSmallerOrEqual(repuesto.stockMinimo),
        ))
        .watch();
  }

  // Registrar un repuesto.
  Future<int> insertar({
    required String nombre,
    required String codigo,
    required double precio,
    required int stockActual,
    required int stockMinimo,
  }) {
    return db
        .into(db.repuestos)
        .insert(
          RepuestosCompanion.insert(
            nombre: nombre,
            codigo: codigo,
            precio: Value(precio),
            stockActual: Value(stockActual),
            stockMinimo: Value(stockMinimo),
          ),
        );
  }

  // Actualizar un repuesto.
  Future<int> actualizar({
    required int id,
    required String nombre,
    required String codigo,
    required double precio,
    required int stockActual,
    required int stockMinimo,
  }) {
    return (db.update(
      db.repuestos,
    )..where((repuesto) => repuesto.id.equals(id))).write(
      RepuestosCompanion(
        nombre: Value(nombre),
        codigo: Value(codigo),
        precio: Value(precio),
        stockActual: Value(stockActual),
        stockMinimo: Value(stockMinimo),
      ),
    );
  }

  // Aumentar las existencias.
  Future<int> aumentarStock({required int id, required int cantidad}) {
    return (db.update(
      db.repuestos,
    )..where((repuesto) => repuesto.id.equals(id))).write(
      RepuestosCompanion.custom(
        stockActual: db.repuestos.stockActual + Constant(cantidad),
      ),
    );
  }

  // Eliminar un repuesto.
  Future<int> eliminar(int id) {
    return (db.delete(
      db.repuestos,
    )..where((repuesto) => repuesto.id.equals(id))).go();
  }
}
