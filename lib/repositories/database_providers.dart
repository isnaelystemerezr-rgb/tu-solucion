import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';

import '../daos/cliente_dao.dart';
import '../daos/equipo_dao.dart';
import '../daos/tecnico_dao.dart';
import '../daos/orden_dao.dart';
import '../daos/trabajo_dao.dart';
import '../daos/repuesto_dao.dart';
import '../daos/repuesto_usado_dao.dart';

import 'cliente_repository.dart';
import 'equipo_repository.dart';
import 'tecnico_repository.dart';
import 'orden_repository.dart';
import 'trabajo_repository.dart';
import 'inventario_repository.dart';
import 'historial_repository.dart';

// =====================================================
// BASE DE DATOS
// =====================================================

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final database = AppDatabase();

  ref.onDispose(() {
    database.close();
  });

  return database;
});

// =====================================================
// DAO
// =====================================================

final clienteDaoProvider = Provider<ClienteDao>((ref) {
  return ClienteDao(ref.watch(appDatabaseProvider));
});

final equipoDaoProvider = Provider<EquipoDao>((ref) {
  return EquipoDao(ref.watch(appDatabaseProvider));
});

final tecnicoDaoProvider = Provider<TecnicoDao>((ref) {
  return TecnicoDao(ref.watch(appDatabaseProvider));
});

final ordenDaoProvider = Provider<OrdenDao>((ref) {
  return OrdenDao(ref.watch(appDatabaseProvider));
});

final trabajoDaoProvider = Provider<TrabajoDao>((ref) {
  return TrabajoDao(ref.watch(appDatabaseProvider));
});

final repuestoDaoProvider = Provider<RepuestoDao>((ref) {
  return RepuestoDao(ref.watch(appDatabaseProvider));
});

final repuestoUsadoDaoProvider = Provider<RepuestoUsadoDao>((ref) {
  return RepuestoUsadoDao(ref.watch(appDatabaseProvider));
});

// =====================================================
// REPOSITORIOS
// =====================================================

final clienteRepositoryProvider = Provider<ClienteRepository>((ref) {
  return ClienteRepository(ref.watch(clienteDaoProvider));
});

final equipoRepositoryProvider = Provider<EquipoRepository>((ref) {
  return EquipoRepository(ref.watch(equipoDaoProvider));
});

final tecnicoRepositoryProvider = Provider<TecnicoRepository>((ref) {
  return TecnicoRepository(ref.watch(tecnicoDaoProvider));
});

final ordenRepositoryProvider = Provider<OrdenRepository>((ref) {
  return OrdenRepository(ref.watch(ordenDaoProvider));
});

final trabajoRepositoryProvider = Provider<TrabajoRepository>((ref) {
  return TrabajoRepository(ref.watch(trabajoDaoProvider));
});

final inventarioRepositoryProvider = Provider<InventarioRepository>((ref) {
  return InventarioRepository(
    repuestoDao: ref.watch(repuestoDaoProvider),
    repuestoUsadoDao: ref.watch(repuestoUsadoDaoProvider),
  );
});

final historialRepositoryProvider = Provider<HistorialRepository>((ref) {
  return HistorialRepository(
    ordenDao: ref.watch(ordenDaoProvider),
    trabajoDao: ref.watch(trabajoDaoProvider),
    repuestoUsadoDao: ref.watch(repuestoUsadoDaoProvider),
  );
});
