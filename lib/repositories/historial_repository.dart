import '../daos/orden_dao.dart';
import '../daos/trabajo_dao.dart';
import '../daos/repuesto_usado_dao.dart';
import '../data/db/app_database.dart';

class HistorialRepository {
  final OrdenDao ordenDao;
  final TrabajoDao trabajoDao;
  final RepuestoUsadoDao repuestoUsadoDao;

  HistorialRepository({
    required this.ordenDao,
    required this.trabajoDao,
    required this.repuestoUsadoDao,
  });

  // Obtener todas las órdenes registradas.
  Future<List<OrdenesReparacionData>> obtenerOrdenes() {
    return ordenDao.obtenerTodas();
  }

  // Obtener una orden específica.
  Future<OrdenesReparacionData?> obtenerOrden(int id) {
    return ordenDao.obtenerPorId(id);
  }

  // Obtener los trabajos realizados en una orden.
  Future<List<TrabajosRealizado>> obtenerTrabajos(int ordenId) {
    return trabajoDao.obtenerPorOrden(ordenId);
  }

  // Obtener los repuestos utilizados en una orden.
  Future<List<RepuestosUsado>> obtenerRepuestosUtilizados(int ordenId) {
    return repuestoUsadoDao.obtenerPorOrden(ordenId);
  }

  // Calcular el costo total de mano de obra.
  Future<double> calcularManoObra(int ordenId) {
    return trabajoDao.calcularManoObra(ordenId);
  }
}
