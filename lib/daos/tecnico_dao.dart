import 'package:drift/drift.dart';

import '../data/db/app_database.dart';

class TecnicoDao {
  final AppDatabase db;

  TecnicoDao(this.db);

  // Obtener todos los técnicos.
  Future<List<Tecnico>> obtenerTodos() {
    return db.select(db.tecnicos).get();
  }

  // Observar técnicos en tiempo real.
  Stream<List<Tecnico>> observarTodos() {
    return db.select(db.tecnicos).watch();
  }

  // Buscar un técnico por ID.
  Future<Tecnico?> obtenerPorId(int id) {
    return (db.select(
      db.tecnicos,
    )..where((tecnico) => tecnico.id.equals(id))).getSingleOrNull();
  }

  // Registrar un técnico.
  Future<int> insertar(String nombre) {
    return db
        .into(db.tecnicos)
        .insert(TecnicosCompanion.insert(nombre: nombre));
  }

  // Actualizar un técnico.
  Future<int> actualizar({required int id, required String nombre}) {
    return (db.update(db.tecnicos)..where((tecnico) => tecnico.id.equals(id)))
        .write(TecnicosCompanion(nombre: Value(nombre)));
  }

  // Eliminar un técnico.
  Future<int> eliminar(int id) {
    return (db.delete(
      db.tecnicos,
    )..where((tecnico) => tecnico.id.equals(id))).go();
  }
}
