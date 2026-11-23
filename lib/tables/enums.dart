// lib/data/tables/enums.dart
import 'package:drift/drift.dart';

enum EstadoOrden { recibida, enReparacion, lista, entregada, cancelada }

extension EstadoOrdenMapper on EstadoOrden {
  static EstadoOrden fromIndex(int index) => EstadoOrden.values[index];
  int get index => EstadoOrden.values.indexOf(this);
}

/// Drift enum mapping (almacenaremos como INTEGER por simplicidad offline).
class EstadoOrdenConverter extends TypeConverter<EstadoOrden, int> {
  const EstadoOrdenConverter();

  @override
  EstadoOrden fromSql(int data) => EstadoOrdenMapper.fromIndex(data);

  @override
  int toSql(EstadoOrden value) => value.index;
}
