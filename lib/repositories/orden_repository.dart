import '../daos/orden_dao.dart';
import '../data/db/app_database.dart';

class OrdenRepository {
  final OrdenDao dao;

  OrdenRepository(this.dao);

  // Obtener todas las órdenes.
  Future<List<OrdenesReparacionData>> obtenerOrdenes() {
    return dao.obtenerTodas();
  }

  // Observar todas las órdenes.
  Stream<List<OrdenesReparacionData>> observarOrdenes() {
    return dao.observarTodas();
  }

  // Buscar una orden por ID.
  Future<OrdenesReparacionData?> obtenerOrden(int id) {
    return dao.obtenerPorId(id);
  }

  // Obtener órdenes de un técnico.
  Future<List<OrdenesReparacionData>> obtenerPorTecnico(int tecnicoId) {
    return dao.obtenerPorTecnico(tecnicoId);
  }

  // Observar órdenes por estado.
  Stream<List<OrdenesReparacionData>> observarPorEstado(int estadoIndex) {
    return dao.observarPorEstado(estadoIndex);
  }

  // Registrar una orden.
  Future<int> registrarOrden({
    required int equipoId,
    int? tecnicoId,
    required int estadoIndex,
    required String fallaReportada,
  }) {
    return dao.insertar(
      equipoId: equipoId,
      tecnicoId: tecnicoId,
      estadoIndex: estadoIndex,
      fallaReportada: fallaReportada,
    );
  }

  // Actualizar el estado de una orden.
  Future<int> actualizarEstado({required int id, required int estadoIndex}) {
    return dao.actualizarEstado(id: id, estadoIndex: estadoIndex);
  }

  // Asignar una orden a un técnico.
  Future<int> asignarTecnico({required int ordenId, required int tecnicoId}) {
    return dao.asignarTecnico(ordenId: ordenId, tecnicoId: tecnicoId);
  }

  // Actualizar la falla reportada.
  Future<int> actualizarFalla({required int id, required String falla}) {
    return dao.actualizarFalla(id: id, falla: falla);
  }

  // Eliminar una orden.
  Future<int> eliminarOrden(int id) {
    return dao.eliminar(id);
  }
}
