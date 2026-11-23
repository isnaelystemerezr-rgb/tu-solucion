import 'package:drift/drift.dart';

class Tecnicos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nombre => text().withLength(min: 1, max: 120)();
}

class Clientes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nombre => text().withLength(min: 1, max: 120)();
  TextColumn get telefono => text().withLength(min: 1, max: 40)();
}

class Equipos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tipo => text().withLength(min: 3, max: 30)();
  TextColumn get marca => text().withLength(min: 1, max: 80)();
  TextColumn get modelo => text().withLength(min: 1, max: 80)();
  TextColumn get numeroSerie => text().withLength(min: 1, max: 120)();
  IntColumn get clienteId => integer().references(Clientes, #id)();
}

class OrdenesReparacion extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get equipoId => integer().references(Equipos, #id)();
  IntColumn get tecnicoId => integer().nullable().references(Tecnicos, #id)();
  IntColumn get estadoIndex =>
      integer().withDefault(const Constant(0))();
  TextColumn get fallaReportada =>
      text().withLength(min: 0, max: 500)();
  DateTimeColumn get fechaCreacion =>
      dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get fechaActualizacion =>
      dateTime().withDefault(currentDateAndTime)();
}

class TrabajosRealizados extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get ordenId =>
      integer().references(OrdenesReparacion, #id)();
  TextColumn get descripcion =>
      text().withLength(min: 1, max: 500)();
  RealColumn get costoManoObra =>
      real().withDefault(const Constant(0))();
}

class Repuestos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nombre => text().withLength(min: 1, max: 120)();
  TextColumn get codigo => text().withLength(min: 1, max: 80)();
  RealColumn get precio => real().withDefault(const Constant(0))();
  IntColumn get stockActual =>
      integer().withDefault(const Constant(0))();
  IntColumn get stockMinimo =>
      integer().withDefault(const Constant(0))();
}

class RepuestosUsados extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get ordenId =>
      integer().references(OrdenesReparacion, #id)();
  IntColumn get repuestoId =>
      integer().references(Repuestos, #id)();
  IntColumn get cantidad =>
      integer().withDefault(const Constant(1))();
}
