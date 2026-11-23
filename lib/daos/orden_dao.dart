import 'package:drift/drift.dart';

import '../data/db/app_database.dart';

class OrdenDao {
  final AppDatabase db;

  OrdenDao(this.db);

  // Obtener todas las órdenes.
  Future<List<OrdenesReparacionData>> obtenerTodas() {
    return db.select(db.ordenesReparacion).get();
  }

  // Observar las órdenes en tiempo real.
  Stream<List<OrdenesReparacionData>> observarTodas() {
    return db.select(db.ordenesReparacion).watch();
  }

  // Buscar una orden por ID.
  Future<OrdenesReparacionData?> obtenerPorId(int id) {
    return (db.select(
      db.ordenesReparacion,
    )..where((orden) => orden.id.equals(id))).getSingleOrNull();
  }

  // Obtener las órdenes asignadas a un técnico.
  Future<List<OrdenesReparacionData>> obtenerPorTecnico(int tecnicoId) {
    return (db.select(
      db.ordenesReparacion,
    )..where((orden) => orden.tecnicoId.equals(tecnicoId))).get();
  }

  // Observar órdenes según su estado.
  Stream<List<OrdenesReparacionData>> observarPorEstado(int estadoIndex) {
    return (db.select(
      db.ordenesReparacion,
    )..where((orden) => orden.estadoIndex.equals(estadoIndex))).watch();
  }

  // Registrar una orden de reparación.
  Future<int> insertar({
    required int equipoId,
    int? tecnicoId,
    required int estadoIndex,
    required String fallaReportada,
  }) {
    return db
        .into(db.ordenesReparacion)
        .insert(
          OrdenesReparacionCompanion.insert(
            equipoId: equipoId,
            tecnicoId: Value(tecnicoId),
            estadoIndex: Value(estadoIndex),
            fallaReportada: fallaReportada,
          ),
        );
  }

  // Actualizar el estado de una orden.
  Future<int> actualizarEstado({required int id, required int estadoIndex}) {
    return (db.update(
      db.ordenesReparacion,
    )..where((orden) => orden.id.equals(id))).write(
      OrdenesReparacionCompanion(
        estadoIndex: Value(estadoIndex),
        fechaActualizacion: Value(DateTime.now()),
      ),
    );
  }

  // Asignar una orden a un técnico.
  Future<int> asignarTecnico({required int ordenId, required int tecnicoId}) {
    return (db.update(
      db.ordenesReparacion,
    )..where((orden) => orden.id.equals(ordenId))).write(
      OrdenesReparacionCompanion(
        tecnicoId: Value(tecnicoId),
        fechaActualizacion: Value(DateTime.now()),
      ),
    );
  }

  // Actualizar la falla reportada.
  Future<int> actualizarFalla({required int id, required String falla}) {
    return (db.update(
      db.ordenesReparacion,
    )..where((orden) => orden.id.equals(id))).write(
      OrdenesReparacionCompanion(
        fallaReportada: Value(falla),
        fechaActualizacion: Value(DateTime.now()),
      ),
    );
  }

  // Eliminar una orden.
  Future<int> eliminar(int id) {
    return (db.delete(
      db.ordenesReparacion,
    )..where((orden) => orden.id.equals(id))).go();
  }
}
