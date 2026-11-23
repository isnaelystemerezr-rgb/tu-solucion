import '../daos/cliente_dao.dart';
import '../data/db/app_database.dart';

class ClienteRepository {
  final ClienteDao dao;

  ClienteRepository(this.dao);

  // Obtener todos los clientes.
  Future<List<Cliente>> obtenerClientes() {
    return dao.obtenerTodos();
  }

  // Observar cambios en los clientes.
  Stream<List<Cliente>> observarClientes() {
    return dao.observarTodos();
  }

  // Buscar un cliente.
  Future<Cliente?> obtenerCliente(int id) {
    return dao.obtenerPorId(id);
  }

  // Registrar un cliente.
  Future<int> registrarCliente({
    required String nombre,
    required String telefono,
  }) {
    return dao.insertar(nombre: nombre, telefono: telefono);
  }

  // Actualizar un cliente.
  Future<int> actualizarCliente({
    required int id,
    required String nombre,
    required String telefono,
  }) {
    return dao.actualizar(id: id, nombre: nombre, telefono: telefono);
  }

  // Eliminar un cliente.
  Future<int> eliminarCliente(int id) {
    return dao.eliminar(id);
  }
}
