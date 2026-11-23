import 'package:drift/drift.dart';

import '../data/db/app_database.dart';

class ClienteDao {
  final AppDatabase db;

  ClienteDao(this.db);

  // Obtener todos los clientes.
  Future<List<Cliente>> obtenerTodos() {
    return db.select(db.clientes).get();
  }

  // Observar los clientes en tiempo real.
  Stream<List<Cliente>> observarTodos() {
    return db.select(db.clientes).watch();
  }

  // Buscar un cliente por su identificador.
  Future<Cliente?> obtenerPorId(int id) {
    return (db.select(
      db.clientes,
    )..where((cliente) => cliente.id.equals(id))).getSingleOrNull();
  }

  // Registrar un cliente.
  Future<int> insertar({required String nombre, required String telefono}) {
    return db
        .into(db.clientes)
        .insert(ClientesCompanion.insert(nombre: nombre, telefono: telefono));
  }

  // Actualizar un cliente.
  Future<int> actualizar({
    required int id,
    required String nombre,
    required String telefono,
  }) {
    return (db.update(
      db.clientes,
    )..where((cliente) => cliente.id.equals(id))).write(
      ClientesCompanion(nombre: Value(nombre), telefono: Value(telefono)),
    );
  }

  // Eliminar un cliente.
  Future<int> eliminar(int id) {
    return (db.delete(
      db.clientes,
    )..where((cliente) => cliente.id.equals(id))).go();
  }
}
