import '../daos/repuesto_dao.dart';
import '../daos/repuesto_usado_dao.dart';
import '../data/db/app_database.dart';

class InventarioRepository {
  final RepuestoDao repuestoDao;
  final RepuestoUsadoDao repuestoUsadoDao;

  InventarioRepository({
    required this.repuestoDao,
    required this.repuestoUsadoDao,
  });

  // Obtener todos los repuestos.
  Future<List<Repuesto>> obtenerRepuestos() {
    return repuestoDao.obtenerTodos();
  }

  // Observar cambios en el inventario.
  Stream<List<Repuesto>> observarRepuestos() {
    return repuestoDao.observarTodos();
  }

  // Buscar un repuesto por su ID.
  Future<Repuesto?> obtenerRepuesto(int id) {
    return repuestoDao.obtenerPorId(id);
  }

  // Buscar un repuesto por su código.
  Future<Repuesto?> obtenerPorCodigo(String codigo) {
    return repuestoDao.obtenerPorCodigo(codigo);
  }

  // Obtener repuestos con stock bajo.
  Future<List<Repuesto>> obtenerStockBajo() {
    return repuestoDao.obtenerStockBajo();
  }

  // Registrar un repuesto.
  Future<int> registrarRepuesto({
    required String nombre,
    required String codigo,
    required double precio,
    required int stockActual,
    required int stockMinimo,
  }) {
    return repuestoDao.insertar(
      nombre: nombre,
      codigo: codigo,
      precio: precio,
      stockActual: stockActual,
      stockMinimo: stockMinimo,
    );
  }

  // Actualizar un repuesto.
  Future<int> actualizarRepuesto({
    required int id,
    required String nombre,
    required String codigo,
    required double precio,
    required int stockActual,
    required int stockMinimo,
  }) {
    return repuestoDao.actualizar(
      id: id,
      nombre: nombre,
      codigo: codigo,
      precio: precio,
      stockActual: stockActual,
      stockMinimo: stockMinimo,
    );
  }

  // Aumentar las existencias.
  Future<int> aumentarStock({required int id, required int cantidad}) {
    return repuestoDao.aumentarStock(id: id, cantidad: cantidad);
  }

  // Registrar el uso de un repuesto en una reparación.
  // El DAO se encarga de descontar el stock automáticamente.
  Future<int> registrarUso({
    required int ordenId,
    required int repuestoId,
    required int cantidad,
  }) {
    return repuestoUsadoDao.registrarUso(
      ordenId: ordenId,
      repuestoId: repuestoId,
      cantidad: cantidad,
    );
  }

  // Obtener los repuestos utilizados en una orden.
  Future<List<RepuestosUsado>> obtenerUsadosPorOrden(int ordenId) {
    return repuestoUsadoDao.obtenerPorOrden(ordenId);
  }

  // Eliminar un uso y devolver las existencias al inventario.
  Future<void> eliminarUso(int usoId) {
    return repuestoUsadoDao.eliminarUso(usoId);
  }

  // Eliminar un repuesto.
  Future<int> eliminarRepuesto(int id) {
    return repuestoDao.eliminar(id);
  }
}
