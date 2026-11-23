import '../daos/tecnico_dao.dart';
import '../data/db/app_database.dart';

class TecnicoRepository {
  final TecnicoDao dao;

  TecnicoRepository(this.dao);

  // Obtener todos los técnicos.
  Future<List<Tecnico>> obtenerTecnicos() {
    return dao.obtenerTodos();
  }

  // Observar técnicos en tiempo real.
  Stream<List<Tecnico>> observarTecnicos() {
    return dao.observarTodos();
  }

  // Buscar un técnico por ID.
  Future<Tecnico?> obtenerTecnico(int id) {
    return dao.obtenerPorId(id);
  }

  // Registrar un técnico.
  Future<int> registrarTecnico(String nombre) {
    return dao.insertar(nombre);
  }

  // Actualizar un técnico.
  Future<int> actualizarTecnico({required int id, required String nombre}) {
    return dao.actualizar(id: id, nombre: nombre);
  }

  // Eliminar un técnico.
  Future<int> eliminarTecnico(int id) {
    return dao.eliminar(id);
  }
}
