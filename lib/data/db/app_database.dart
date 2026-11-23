// lib/data/db/app_database.dart
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';

import '../../tables/entidades.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Tecnicos,
    Clientes,
    Equipos,
    OrdenesReparacion,
    TrabajosRealizados,
    Repuestos,
    RepuestosUsados,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/tu_solution.sqlite');
    return NativeDatabase(file);
  });
}
