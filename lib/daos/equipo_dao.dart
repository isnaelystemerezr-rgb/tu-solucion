import 'package:drift/drift.dart';

import '../data/db/app_database.dart';

class EquipoDao {
  final AppDatabase db;

  EquipoDao(this.db);

  // Obtener todos los equipos.
  Future<List<Equipo>> obtenerTodos() {
    return db.select(db.equipos).get();
  }

  // Observar los equipos en tiempo real.
  Stream<List<Equipo>> observarTodos() {
    return db.select(db.equipos).watch();
  }

  // Obtener los equipos de un cliente.
  Future<List<Equipo>> obtenerPorCliente(int clienteId) {
    return (db.select(
      db.equipos,
    )..where((equipo) => equipo.clienteId.equals(clienteId))).get();
  }

  // Buscar un equipo por ID.
  Future<Equipo?> obtenerPorId(int id) {
    return (db.select(
      db.equipos,
    )..where((equipo) => equipo.id.equals(id))).getSingleOrNull();
  }

  // Registrar un equipo.
  Future<int> insertar({
    required String tipo,
    required String marca,
    required String modelo,
    required String numeroSerie,
    required int clienteId,
  }) {
    return db
        .into(db.equipos)
        .insert(
          EquiposCompanion.insert(
            tipo: tipo,
            marca: marca,
            modelo: modelo,
            numeroSerie: numeroSerie,
            clienteId: clienteId,
          ),
        );
  }

  // Actualizar un equipo.
  Future<int> actualizar({
    required int id,
    required String tipo,
    required String marca,
    required String modelo,
    required String numeroSerie,
    required int clienteId,
  }) {
    return (db.update(
      db.equipos,
    )..where((equipo) => equipo.id.equals(id))).write(
      EquiposCompanion(
        tipo: Value(tipo),
        marca: Value(marca),
        modelo: Value(modelo),
        numeroSerie: Value(numeroSerie),
        clienteId: Value(clienteId),
      ),
    );
  }

  // Eliminar un equipo.
  Future<int> eliminar(int id) {
    return (db.delete(
      db.equipos,
    )..where((equipo) => equipo.id.equals(id))).go();
  }
}
