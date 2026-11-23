import '../daos/equipo_dao.dart';
import '../data/db/app_database.dart';

class EquipoRepository {
  final EquipoDao dao;

  EquipoRepository(this.dao);

  // Obtener todos los equipos.
  Future<List<Equipo>> obtenerEquipos() {
    return dao.obtenerTodos();
  }

  // Observar equipos en tiempo real.
  Stream<List<Equipo>> observarEquipos() {
    return dao.observarTodos();
  }

  // Obtener equipos de un cliente.
  Future<List<Equipo>> obtenerEquiposPorCliente(int clienteId) {
    return dao.obtenerPorCliente(clienteId);
  }

  // Buscar un equipo por ID.
  Future<Equipo?> obtenerEquipo(int id) {
    return dao.obtenerPorId(id);
  }

  // Registrar un equipo.
  Future<int> registrarEquipo({
    required String tipo,
    required String marca,
    required String modelo,
    required String numeroSerie,
    required int clienteId,
  }) {
    return dao.insertar(
      tipo: tipo,
      marca: marca,
      modelo: modelo,
      numeroSerie: numeroSerie,
      clienteId: clienteId,
    );
  }

  // Actualizar un equipo.
  Future<int> actualizarEquipo({
    required int id,
    required String tipo,
    required String marca,
    required String modelo,
    required String numeroSerie,
    required int clienteId,
  }) {
    return dao.actualizar(
      id: id,
      tipo: tipo,
      marca: marca,
      modelo: modelo,
      numeroSerie: numeroSerie,
      clienteId: clienteId,
    );
  }

  // Eliminar un equipo.
  Future<int> eliminarEquipo(int id) {
    return dao.eliminar(id);
  }
}
