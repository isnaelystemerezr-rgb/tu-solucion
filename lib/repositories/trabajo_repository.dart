import '../daos/trabajo_dao.dart';
import '../data/db/app_database.dart';

class TrabajoRepository {
  final TrabajoDao dao;

  TrabajoRepository(this.dao);

  // Obtener todos los trabajos registrados.
  Future<List<TrabajosRealizado>> obtenerTrabajos() {
    return dao.obtenerTodos();
  }

  // Observar los trabajos en tiempo real.
  Stream<List<TrabajosRealizado>> observarTrabajos() {
    return dao.observarTodos();
  }

  // Obtener los trabajos asociados a una orden.
  Future<List<TrabajosRealizado>> obtenerPorOrden(int ordenId) {
    return dao.obtenerPorOrden(ordenId);
  }

  // Registrar un trabajo realizado.
  Future<int> registrarTrabajo({
    required int ordenId,
    required String descripcion,
    required double costoManoObra,
  }) {
    return dao.insertar(
      ordenId: ordenId,
      descripcion: descripcion,
      costoManoObra: costoManoObra,
    );
  }

  // Actualizar un trabajo.

  Future<int> actualizarTrabajo({
    required int id,
    required String descripcion,
    required double costoManoObra,
  }) {
    return dao.actualizar(
      id: id,
      descripcion: descripcion,
      costoManoObra: costoManoObra,
    );
  }

  // Eliminar un trabajo.
  Future<int> eliminarTrabajo(int id) {
    return dao.eliminar(id);
  }

  // Calcular el total de mano de obra de una orden.
  Future<double> calcularManoObra(int ordenId) {
    return dao.calcularManoObra(ordenId);
  }
}
