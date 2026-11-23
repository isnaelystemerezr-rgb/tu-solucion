import 'package:drift/drift.dart';

import '../data/db/app_database.dart';

class TrabajoDao {
  final AppDatabase db;

  TrabajoDao(this.db);

  // Obtener todos los trabajos.
  Future<List<TrabajosRealizado>> obtenerTodos() {
    return db.select(db.trabajosRealizados).get();
  }

  // Observar los trabajos en tiempo real.
  Stream<List<TrabajosRealizado>> observarTodos() {
    return db.select(db.trabajosRealizados).watch();
  }

  // Obtener los trabajos de una orden.
  Future<List<TrabajosRealizado>> obtenerPorOrden(int ordenId) {
    return (db.select(
      db.trabajosRealizados,
    )..where((trabajo) => trabajo.ordenId.equals(ordenId))).get();
  }

  // Registrar un trabajo realizado.
  Future<int> insertar({
    required int ordenId,
    required String descripcion,
    required double costoManoObra,
  }) {
    return db
        .into(db.trabajosRealizados)
        .insert(
          TrabajosRealizadosCompanion.insert(
            ordenId: ordenId,
            descripcion: descripcion,
            costoManoObra: Value(costoManoObra),
          ),
        );
  }

  // Actualizar un trabajo.
  Future<int> actualizar({
    required int id,
    required String descripcion,
    required double costoManoObra,
  }) {
    return (db.update(
      db.trabajosRealizados,
    )..where((trabajo) => trabajo.id.equals(id))).write(
      TrabajosRealizadosCompanion(
        descripcion: Value(descripcion),
        costoManoObra: Value(costoManoObra),
      ),
    );
  }

  // Eliminar un trabajo.
  Future<int> eliminar(int id) {
    return (db.delete(
      db.trabajosRealizados,
    )..where((trabajo) => trabajo.id.equals(id))).go();
  }

  // Calcular el costo total de mano de obra de una orden.
  Future<double> calcularManoObra(int ordenId) async {
    final trabajos = await obtenerPorOrden(ordenId);

    return trabajos.fold<double>(
      0,
      (total, trabajo) => total + trabajo.costoManoObra,
    );
  }
}
