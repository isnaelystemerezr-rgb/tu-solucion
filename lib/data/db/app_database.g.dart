// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TecnicosTable extends Tecnicos with TableInfo<$TecnicosTable, Tecnico> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TecnicosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
    'nombre',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 120,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, nombre];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tecnicos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Tecnico> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(
        _nombreMeta,
        nombre.isAcceptableOrUnknown(data['nombre']!, _nombreMeta),
      );
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tecnico map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tecnico(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nombre: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre'],
      )!,
    );
  }

  @override
  $TecnicosTable createAlias(String alias) {
    return $TecnicosTable(attachedDatabase, alias);
  }
}

class Tecnico extends DataClass implements Insertable<Tecnico> {
  final int id;
  final String nombre;
  const Tecnico({required this.id, required this.nombre});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nombre'] = Variable<String>(nombre);
    return map;
  }

  TecnicosCompanion toCompanion(bool nullToAbsent) {
    return TecnicosCompanion(id: Value(id), nombre: Value(nombre));
  }

  factory Tecnico.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tecnico(
      id: serializer.fromJson<int>(json['id']),
      nombre: serializer.fromJson<String>(json['nombre']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nombre': serializer.toJson<String>(nombre),
    };
  }

  Tecnico copyWith({int? id, String? nombre}) =>
      Tecnico(id: id ?? this.id, nombre: nombre ?? this.nombre);
  Tecnico copyWithCompanion(TecnicosCompanion data) {
    return Tecnico(
      id: data.id.present ? data.id.value : this.id,
      nombre: data.nombre.present ? data.nombre.value : this.nombre,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Tecnico(')
          ..write('id: $id, ')
          ..write('nombre: $nombre')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nombre);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tecnico && other.id == this.id && other.nombre == this.nombre);
}

class TecnicosCompanion extends UpdateCompanion<Tecnico> {
  final Value<int> id;
  final Value<String> nombre;
  const TecnicosCompanion({
    this.id = const Value.absent(),
    this.nombre = const Value.absent(),
  });
  TecnicosCompanion.insert({
    this.id = const Value.absent(),
    required String nombre,
  }) : nombre = Value(nombre);
  static Insertable<Tecnico> custom({
    Expression<int>? id,
    Expression<String>? nombre,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nombre != null) 'nombre': nombre,
    });
  }

  TecnicosCompanion copyWith({Value<int>? id, Value<String>? nombre}) {
    return TecnicosCompanion(id: id ?? this.id, nombre: nombre ?? this.nombre);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TecnicosCompanion(')
          ..write('id: $id, ')
          ..write('nombre: $nombre')
          ..write(')'))
        .toString();
  }
}

class $ClientesTable extends Clientes with TableInfo<$ClientesTable, Cliente> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
    'nombre',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 120,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _telefonoMeta = const VerificationMeta(
    'telefono',
  );
  @override
  late final GeneratedColumn<String> telefono = GeneratedColumn<String>(
    'telefono',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 40,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, nombre, telefono];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'clientes';
  @override
  VerificationContext validateIntegrity(
    Insertable<Cliente> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(
        _nombreMeta,
        nombre.isAcceptableOrUnknown(data['nombre']!, _nombreMeta),
      );
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    if (data.containsKey('telefono')) {
      context.handle(
        _telefonoMeta,
        telefono.isAcceptableOrUnknown(data['telefono']!, _telefonoMeta),
      );
    } else if (isInserting) {
      context.missing(_telefonoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Cliente map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Cliente(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nombre: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre'],
      )!,
      telefono: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}telefono'],
      )!,
    );
  }

  @override
  $ClientesTable createAlias(String alias) {
    return $ClientesTable(attachedDatabase, alias);
  }
}

class Cliente extends DataClass implements Insertable<Cliente> {
  final int id;
  final String nombre;
  final String telefono;
  const Cliente({
    required this.id,
    required this.nombre,
    required this.telefono,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nombre'] = Variable<String>(nombre);
    map['telefono'] = Variable<String>(telefono);
    return map;
  }

  ClientesCompanion toCompanion(bool nullToAbsent) {
    return ClientesCompanion(
      id: Value(id),
      nombre: Value(nombre),
      telefono: Value(telefono),
    );
  }

  factory Cliente.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Cliente(
      id: serializer.fromJson<int>(json['id']),
      nombre: serializer.fromJson<String>(json['nombre']),
      telefono: serializer.fromJson<String>(json['telefono']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nombre': serializer.toJson<String>(nombre),
      'telefono': serializer.toJson<String>(telefono),
    };
  }

  Cliente copyWith({int? id, String? nombre, String? telefono}) => Cliente(
    id: id ?? this.id,
    nombre: nombre ?? this.nombre,
    telefono: telefono ?? this.telefono,
  );
  Cliente copyWithCompanion(ClientesCompanion data) {
    return Cliente(
      id: data.id.present ? data.id.value : this.id,
      nombre: data.nombre.present ? data.nombre.value : this.nombre,
      telefono: data.telefono.present ? data.telefono.value : this.telefono,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Cliente(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('telefono: $telefono')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nombre, telefono);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Cliente &&
          other.id == this.id &&
          other.nombre == this.nombre &&
          other.telefono == this.telefono);
}

class ClientesCompanion extends UpdateCompanion<Cliente> {
  final Value<int> id;
  final Value<String> nombre;
  final Value<String> telefono;
  const ClientesCompanion({
    this.id = const Value.absent(),
    this.nombre = const Value.absent(),
    this.telefono = const Value.absent(),
  });
  ClientesCompanion.insert({
    this.id = const Value.absent(),
    required String nombre,
    required String telefono,
  }) : nombre = Value(nombre),
       telefono = Value(telefono);
  static Insertable<Cliente> custom({
    Expression<int>? id,
    Expression<String>? nombre,
    Expression<String>? telefono,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nombre != null) 'nombre': nombre,
      if (telefono != null) 'telefono': telefono,
    });
  }

  ClientesCompanion copyWith({
    Value<int>? id,
    Value<String>? nombre,
    Value<String>? telefono,
  }) {
    return ClientesCompanion(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      telefono: telefono ?? this.telefono,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (telefono.present) {
      map['telefono'] = Variable<String>(telefono.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientesCompanion(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('telefono: $telefono')
          ..write(')'))
        .toString();
  }
}

class $EquiposTable extends Equipos with TableInfo<$EquiposTable, Equipo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EquiposTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  @override
  late final GeneratedColumn<String> tipo = GeneratedColumn<String>(
    'tipo',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 3,
      maxTextLength: 30,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _marcaMeta = const VerificationMeta('marca');
  @override
  late final GeneratedColumn<String> marca = GeneratedColumn<String>(
    'marca',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 80,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modeloMeta = const VerificationMeta('modelo');
  @override
  late final GeneratedColumn<String> modelo = GeneratedColumn<String>(
    'modelo',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 80,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _numeroSerieMeta = const VerificationMeta(
    'numeroSerie',
  );
  @override
  late final GeneratedColumn<String> numeroSerie = GeneratedColumn<String>(
    'numero_serie',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 120,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clienteIdMeta = const VerificationMeta(
    'clienteId',
  );
  @override
  late final GeneratedColumn<int> clienteId = GeneratedColumn<int>(
    'cliente_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES clientes (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    tipo,
    marca,
    modelo,
    numeroSerie,
    clienteId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'equipos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Equipo> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tipo')) {
      context.handle(
        _tipoMeta,
        tipo.isAcceptableOrUnknown(data['tipo']!, _tipoMeta),
      );
    } else if (isInserting) {
      context.missing(_tipoMeta);
    }
    if (data.containsKey('marca')) {
      context.handle(
        _marcaMeta,
        marca.isAcceptableOrUnknown(data['marca']!, _marcaMeta),
      );
    } else if (isInserting) {
      context.missing(_marcaMeta);
    }
    if (data.containsKey('modelo')) {
      context.handle(
        _modeloMeta,
        modelo.isAcceptableOrUnknown(data['modelo']!, _modeloMeta),
      );
    } else if (isInserting) {
      context.missing(_modeloMeta);
    }
    if (data.containsKey('numero_serie')) {
      context.handle(
        _numeroSerieMeta,
        numeroSerie.isAcceptableOrUnknown(
          data['numero_serie']!,
          _numeroSerieMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_numeroSerieMeta);
    }
    if (data.containsKey('cliente_id')) {
      context.handle(
        _clienteIdMeta,
        clienteId.isAcceptableOrUnknown(data['cliente_id']!, _clienteIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Equipo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Equipo(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      tipo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tipo'],
      )!,
      marca: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}marca'],
      )!,
      modelo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}modelo'],
      )!,
      numeroSerie: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}numero_serie'],
      )!,
      clienteId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cliente_id'],
      )!,
    );
  }

  @override
  $EquiposTable createAlias(String alias) {
    return $EquiposTable(attachedDatabase, alias);
  }
}

class Equipo extends DataClass implements Insertable<Equipo> {
  final int id;
  final String tipo;
  final String marca;
  final String modelo;
  final String numeroSerie;
  final int clienteId;
  const Equipo({
    required this.id,
    required this.tipo,
    required this.marca,
    required this.modelo,
    required this.numeroSerie,
    required this.clienteId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tipo'] = Variable<String>(tipo);
    map['marca'] = Variable<String>(marca);
    map['modelo'] = Variable<String>(modelo);
    map['numero_serie'] = Variable<String>(numeroSerie);
    map['cliente_id'] = Variable<int>(clienteId);
    return map;
  }

  EquiposCompanion toCompanion(bool nullToAbsent) {
    return EquiposCompanion(
      id: Value(id),
      tipo: Value(tipo),
      marca: Value(marca),
      modelo: Value(modelo),
      numeroSerie: Value(numeroSerie),
      clienteId: Value(clienteId),
    );
  }

  factory Equipo.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Equipo(
      id: serializer.fromJson<int>(json['id']),
      tipo: serializer.fromJson<String>(json['tipo']),
      marca: serializer.fromJson<String>(json['marca']),
      modelo: serializer.fromJson<String>(json['modelo']),
      numeroSerie: serializer.fromJson<String>(json['numeroSerie']),
      clienteId: serializer.fromJson<int>(json['clienteId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tipo': serializer.toJson<String>(tipo),
      'marca': serializer.toJson<String>(marca),
      'modelo': serializer.toJson<String>(modelo),
      'numeroSerie': serializer.toJson<String>(numeroSerie),
      'clienteId': serializer.toJson<int>(clienteId),
    };
  }

  Equipo copyWith({
    int? id,
    String? tipo,
    String? marca,
    String? modelo,
    String? numeroSerie,
    int? clienteId,
  }) => Equipo(
    id: id ?? this.id,
    tipo: tipo ?? this.tipo,
    marca: marca ?? this.marca,
    modelo: modelo ?? this.modelo,
    numeroSerie: numeroSerie ?? this.numeroSerie,
    clienteId: clienteId ?? this.clienteId,
  );
  Equipo copyWithCompanion(EquiposCompanion data) {
    return Equipo(
      id: data.id.present ? data.id.value : this.id,
      tipo: data.tipo.present ? data.tipo.value : this.tipo,
      marca: data.marca.present ? data.marca.value : this.marca,
      modelo: data.modelo.present ? data.modelo.value : this.modelo,
      numeroSerie: data.numeroSerie.present
          ? data.numeroSerie.value
          : this.numeroSerie,
      clienteId: data.clienteId.present ? data.clienteId.value : this.clienteId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Equipo(')
          ..write('id: $id, ')
          ..write('tipo: $tipo, ')
          ..write('marca: $marca, ')
          ..write('modelo: $modelo, ')
          ..write('numeroSerie: $numeroSerie, ')
          ..write('clienteId: $clienteId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, tipo, marca, modelo, numeroSerie, clienteId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Equipo &&
          other.id == this.id &&
          other.tipo == this.tipo &&
          other.marca == this.marca &&
          other.modelo == this.modelo &&
          other.numeroSerie == this.numeroSerie &&
          other.clienteId == this.clienteId);
}

class EquiposCompanion extends UpdateCompanion<Equipo> {
  final Value<int> id;
  final Value<String> tipo;
  final Value<String> marca;
  final Value<String> modelo;
  final Value<String> numeroSerie;
  final Value<int> clienteId;
  const EquiposCompanion({
    this.id = const Value.absent(),
    this.tipo = const Value.absent(),
    this.marca = const Value.absent(),
    this.modelo = const Value.absent(),
    this.numeroSerie = const Value.absent(),
    this.clienteId = const Value.absent(),
  });
  EquiposCompanion.insert({
    this.id = const Value.absent(),
    required String tipo,
    required String marca,
    required String modelo,
    required String numeroSerie,
    required int clienteId,
  }) : tipo = Value(tipo),
       marca = Value(marca),
       modelo = Value(modelo),
       numeroSerie = Value(numeroSerie),
       clienteId = Value(clienteId);
  static Insertable<Equipo> custom({
    Expression<int>? id,
    Expression<String>? tipo,
    Expression<String>? marca,
    Expression<String>? modelo,
    Expression<String>? numeroSerie,
    Expression<int>? clienteId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tipo != null) 'tipo': tipo,
      if (marca != null) 'marca': marca,
      if (modelo != null) 'modelo': modelo,
      if (numeroSerie != null) 'numero_serie': numeroSerie,
      if (clienteId != null) 'cliente_id': clienteId,
    });
  }

  EquiposCompanion copyWith({
    Value<int>? id,
    Value<String>? tipo,
    Value<String>? marca,
    Value<String>? modelo,
    Value<String>? numeroSerie,
    Value<int>? clienteId,
  }) {
    return EquiposCompanion(
      id: id ?? this.id,
      tipo: tipo ?? this.tipo,
      marca: marca ?? this.marca,
      modelo: modelo ?? this.modelo,
      numeroSerie: numeroSerie ?? this.numeroSerie,
      clienteId: clienteId ?? this.clienteId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tipo.present) {
      map['tipo'] = Variable<String>(tipo.value);
    }
    if (marca.present) {
      map['marca'] = Variable<String>(marca.value);
    }
    if (modelo.present) {
      map['modelo'] = Variable<String>(modelo.value);
    }
    if (numeroSerie.present) {
      map['numero_serie'] = Variable<String>(numeroSerie.value);
    }
    if (clienteId.present) {
      map['cliente_id'] = Variable<int>(clienteId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EquiposCompanion(')
          ..write('id: $id, ')
          ..write('tipo: $tipo, ')
          ..write('marca: $marca, ')
          ..write('modelo: $modelo, ')
          ..write('numeroSerie: $numeroSerie, ')
          ..write('clienteId: $clienteId')
          ..write(')'))
        .toString();
  }
}

class $OrdenesReparacionTable extends OrdenesReparacion
    with TableInfo<$OrdenesReparacionTable, OrdenesReparacionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrdenesReparacionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _equipoIdMeta = const VerificationMeta(
    'equipoId',
  );
  @override
  late final GeneratedColumn<int> equipoId = GeneratedColumn<int>(
    'equipo_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES equipos (id)',
    ),
  );
  static const VerificationMeta _tecnicoIdMeta = const VerificationMeta(
    'tecnicoId',
  );
  @override
  late final GeneratedColumn<int> tecnicoId = GeneratedColumn<int>(
    'tecnico_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tecnicos (id)',
    ),
  );
  static const VerificationMeta _estadoIndexMeta = const VerificationMeta(
    'estadoIndex',
  );
  @override
  late final GeneratedColumn<int> estadoIndex = GeneratedColumn<int>(
    'estado_index',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _fallaReportadaMeta = const VerificationMeta(
    'fallaReportada',
  );
  @override
  late final GeneratedColumn<String> fallaReportada = GeneratedColumn<String>(
    'falla_reportada',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 0,
      maxTextLength: 500,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fechaCreacionMeta = const VerificationMeta(
    'fechaCreacion',
  );
  @override
  late final GeneratedColumn<DateTime> fechaCreacion =
      GeneratedColumn<DateTime>(
        'fecha_creacion',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
        defaultValue: currentDateAndTime,
      );
  static const VerificationMeta _fechaActualizacionMeta =
      const VerificationMeta('fechaActualizacion');
  @override
  late final GeneratedColumn<DateTime> fechaActualizacion =
      GeneratedColumn<DateTime>(
        'fecha_actualizacion',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
        defaultValue: currentDateAndTime,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    equipoId,
    tecnicoId,
    estadoIndex,
    fallaReportada,
    fechaCreacion,
    fechaActualizacion,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ordenes_reparacion';
  @override
  VerificationContext validateIntegrity(
    Insertable<OrdenesReparacionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('equipo_id')) {
      context.handle(
        _equipoIdMeta,
        equipoId.isAcceptableOrUnknown(data['equipo_id']!, _equipoIdMeta),
      );
    } else if (isInserting) {
      context.missing(_equipoIdMeta);
    }
    if (data.containsKey('tecnico_id')) {
      context.handle(
        _tecnicoIdMeta,
        tecnicoId.isAcceptableOrUnknown(data['tecnico_id']!, _tecnicoIdMeta),
      );
    }
    if (data.containsKey('estado_index')) {
      context.handle(
        _estadoIndexMeta,
        estadoIndex.isAcceptableOrUnknown(
          data['estado_index']!,
          _estadoIndexMeta,
        ),
      );
    }
    if (data.containsKey('falla_reportada')) {
      context.handle(
        _fallaReportadaMeta,
        fallaReportada.isAcceptableOrUnknown(
          data['falla_reportada']!,
          _fallaReportadaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fallaReportadaMeta);
    }
    if (data.containsKey('fecha_creacion')) {
      context.handle(
        _fechaCreacionMeta,
        fechaCreacion.isAcceptableOrUnknown(
          data['fecha_creacion']!,
          _fechaCreacionMeta,
        ),
      );
    }
    if (data.containsKey('fecha_actualizacion')) {
      context.handle(
        _fechaActualizacionMeta,
        fechaActualizacion.isAcceptableOrUnknown(
          data['fecha_actualizacion']!,
          _fechaActualizacionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrdenesReparacionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrdenesReparacionData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      equipoId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}equipo_id'],
      )!,
      tecnicoId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tecnico_id'],
      ),
      estadoIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}estado_index'],
      )!,
      fallaReportada: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}falla_reportada'],
      )!,
      fechaCreacion: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_creacion'],
      )!,
      fechaActualizacion: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_actualizacion'],
      )!,
    );
  }

  @override
  $OrdenesReparacionTable createAlias(String alias) {
    return $OrdenesReparacionTable(attachedDatabase, alias);
  }
}

class OrdenesReparacionData extends DataClass
    implements Insertable<OrdenesReparacionData> {
  final int id;
  final int equipoId;
  final int? tecnicoId;
  final int estadoIndex;
  final String fallaReportada;
  final DateTime fechaCreacion;
  final DateTime fechaActualizacion;
  const OrdenesReparacionData({
    required this.id,
    required this.equipoId,
    this.tecnicoId,
    required this.estadoIndex,
    required this.fallaReportada,
    required this.fechaCreacion,
    required this.fechaActualizacion,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['equipo_id'] = Variable<int>(equipoId);
    if (!nullToAbsent || tecnicoId != null) {
      map['tecnico_id'] = Variable<int>(tecnicoId);
    }
    map['estado_index'] = Variable<int>(estadoIndex);
    map['falla_reportada'] = Variable<String>(fallaReportada);
    map['fecha_creacion'] = Variable<DateTime>(fechaCreacion);
    map['fecha_actualizacion'] = Variable<DateTime>(fechaActualizacion);
    return map;
  }

  OrdenesReparacionCompanion toCompanion(bool nullToAbsent) {
    return OrdenesReparacionCompanion(
      id: Value(id),
      equipoId: Value(equipoId),
      tecnicoId: tecnicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(tecnicoId),
      estadoIndex: Value(estadoIndex),
      fallaReportada: Value(fallaReportada),
      fechaCreacion: Value(fechaCreacion),
      fechaActualizacion: Value(fechaActualizacion),
    );
  }

  factory OrdenesReparacionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrdenesReparacionData(
      id: serializer.fromJson<int>(json['id']),
      equipoId: serializer.fromJson<int>(json['equipoId']),
      tecnicoId: serializer.fromJson<int?>(json['tecnicoId']),
      estadoIndex: serializer.fromJson<int>(json['estadoIndex']),
      fallaReportada: serializer.fromJson<String>(json['fallaReportada']),
      fechaCreacion: serializer.fromJson<DateTime>(json['fechaCreacion']),
      fechaActualizacion: serializer.fromJson<DateTime>(
        json['fechaActualizacion'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'equipoId': serializer.toJson<int>(equipoId),
      'tecnicoId': serializer.toJson<int?>(tecnicoId),
      'estadoIndex': serializer.toJson<int>(estadoIndex),
      'fallaReportada': serializer.toJson<String>(fallaReportada),
      'fechaCreacion': serializer.toJson<DateTime>(fechaCreacion),
      'fechaActualizacion': serializer.toJson<DateTime>(fechaActualizacion),
    };
  }

  OrdenesReparacionData copyWith({
    int? id,
    int? equipoId,
    Value<int?> tecnicoId = const Value.absent(),
    int? estadoIndex,
    String? fallaReportada,
    DateTime? fechaCreacion,
    DateTime? fechaActualizacion,
  }) => OrdenesReparacionData(
    id: id ?? this.id,
    equipoId: equipoId ?? this.equipoId,
    tecnicoId: tecnicoId.present ? tecnicoId.value : this.tecnicoId,
    estadoIndex: estadoIndex ?? this.estadoIndex,
    fallaReportada: fallaReportada ?? this.fallaReportada,
    fechaCreacion: fechaCreacion ?? this.fechaCreacion,
    fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
  );
  OrdenesReparacionData copyWithCompanion(OrdenesReparacionCompanion data) {
    return OrdenesReparacionData(
      id: data.id.present ? data.id.value : this.id,
      equipoId: data.equipoId.present ? data.equipoId.value : this.equipoId,
      tecnicoId: data.tecnicoId.present ? data.tecnicoId.value : this.tecnicoId,
      estadoIndex: data.estadoIndex.present
          ? data.estadoIndex.value
          : this.estadoIndex,
      fallaReportada: data.fallaReportada.present
          ? data.fallaReportada.value
          : this.fallaReportada,
      fechaCreacion: data.fechaCreacion.present
          ? data.fechaCreacion.value
          : this.fechaCreacion,
      fechaActualizacion: data.fechaActualizacion.present
          ? data.fechaActualizacion.value
          : this.fechaActualizacion,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrdenesReparacionData(')
          ..write('id: $id, ')
          ..write('equipoId: $equipoId, ')
          ..write('tecnicoId: $tecnicoId, ')
          ..write('estadoIndex: $estadoIndex, ')
          ..write('fallaReportada: $fallaReportada, ')
          ..write('fechaCreacion: $fechaCreacion, ')
          ..write('fechaActualizacion: $fechaActualizacion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    equipoId,
    tecnicoId,
    estadoIndex,
    fallaReportada,
    fechaCreacion,
    fechaActualizacion,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrdenesReparacionData &&
          other.id == this.id &&
          other.equipoId == this.equipoId &&
          other.tecnicoId == this.tecnicoId &&
          other.estadoIndex == this.estadoIndex &&
          other.fallaReportada == this.fallaReportada &&
          other.fechaCreacion == this.fechaCreacion &&
          other.fechaActualizacion == this.fechaActualizacion);
}

class OrdenesReparacionCompanion
    extends UpdateCompanion<OrdenesReparacionData> {
  final Value<int> id;
  final Value<int> equipoId;
  final Value<int?> tecnicoId;
  final Value<int> estadoIndex;
  final Value<String> fallaReportada;
  final Value<DateTime> fechaCreacion;
  final Value<DateTime> fechaActualizacion;
  const OrdenesReparacionCompanion({
    this.id = const Value.absent(),
    this.equipoId = const Value.absent(),
    this.tecnicoId = const Value.absent(),
    this.estadoIndex = const Value.absent(),
    this.fallaReportada = const Value.absent(),
    this.fechaCreacion = const Value.absent(),
    this.fechaActualizacion = const Value.absent(),
  });
  OrdenesReparacionCompanion.insert({
    this.id = const Value.absent(),
    required int equipoId,
    this.tecnicoId = const Value.absent(),
    this.estadoIndex = const Value.absent(),
    required String fallaReportada,
    this.fechaCreacion = const Value.absent(),
    this.fechaActualizacion = const Value.absent(),
  }) : equipoId = Value(equipoId),
       fallaReportada = Value(fallaReportada);
  static Insertable<OrdenesReparacionData> custom({
    Expression<int>? id,
    Expression<int>? equipoId,
    Expression<int>? tecnicoId,
    Expression<int>? estadoIndex,
    Expression<String>? fallaReportada,
    Expression<DateTime>? fechaCreacion,
    Expression<DateTime>? fechaActualizacion,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (equipoId != null) 'equipo_id': equipoId,
      if (tecnicoId != null) 'tecnico_id': tecnicoId,
      if (estadoIndex != null) 'estado_index': estadoIndex,
      if (fallaReportada != null) 'falla_reportada': fallaReportada,
      if (fechaCreacion != null) 'fecha_creacion': fechaCreacion,
      if (fechaActualizacion != null) 'fecha_actualizacion': fechaActualizacion,
    });
  }

  OrdenesReparacionCompanion copyWith({
    Value<int>? id,
    Value<int>? equipoId,
    Value<int?>? tecnicoId,
    Value<int>? estadoIndex,
    Value<String>? fallaReportada,
    Value<DateTime>? fechaCreacion,
    Value<DateTime>? fechaActualizacion,
  }) {
    return OrdenesReparacionCompanion(
      id: id ?? this.id,
      equipoId: equipoId ?? this.equipoId,
      tecnicoId: tecnicoId ?? this.tecnicoId,
      estadoIndex: estadoIndex ?? this.estadoIndex,
      fallaReportada: fallaReportada ?? this.fallaReportada,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
      fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (equipoId.present) {
      map['equipo_id'] = Variable<int>(equipoId.value);
    }
    if (tecnicoId.present) {
      map['tecnico_id'] = Variable<int>(tecnicoId.value);
    }
    if (estadoIndex.present) {
      map['estado_index'] = Variable<int>(estadoIndex.value);
    }
    if (fallaReportada.present) {
      map['falla_reportada'] = Variable<String>(fallaReportada.value);
    }
    if (fechaCreacion.present) {
      map['fecha_creacion'] = Variable<DateTime>(fechaCreacion.value);
    }
    if (fechaActualizacion.present) {
      map['fecha_actualizacion'] = Variable<DateTime>(fechaActualizacion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdenesReparacionCompanion(')
          ..write('id: $id, ')
          ..write('equipoId: $equipoId, ')
          ..write('tecnicoId: $tecnicoId, ')
          ..write('estadoIndex: $estadoIndex, ')
          ..write('fallaReportada: $fallaReportada, ')
          ..write('fechaCreacion: $fechaCreacion, ')
          ..write('fechaActualizacion: $fechaActualizacion')
          ..write(')'))
        .toString();
  }
}

class $TrabajosRealizadosTable extends TrabajosRealizados
    with TableInfo<$TrabajosRealizadosTable, TrabajosRealizado> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TrabajosRealizadosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _ordenIdMeta = const VerificationMeta(
    'ordenId',
  );
  @override
  late final GeneratedColumn<int> ordenId = GeneratedColumn<int>(
    'orden_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ordenes_reparacion (id)',
    ),
  );
  static const VerificationMeta _descripcionMeta = const VerificationMeta(
    'descripcion',
  );
  @override
  late final GeneratedColumn<String> descripcion = GeneratedColumn<String>(
    'descripcion',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 500,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _costoManoObraMeta = const VerificationMeta(
    'costoManoObra',
  );
  @override
  late final GeneratedColumn<double> costoManoObra = GeneratedColumn<double>(
    'costo_mano_obra',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    ordenId,
    descripcion,
    costoManoObra,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trabajos_realizados';
  @override
  VerificationContext validateIntegrity(
    Insertable<TrabajosRealizado> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('orden_id')) {
      context.handle(
        _ordenIdMeta,
        ordenId.isAcceptableOrUnknown(data['orden_id']!, _ordenIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ordenIdMeta);
    }
    if (data.containsKey('descripcion')) {
      context.handle(
        _descripcionMeta,
        descripcion.isAcceptableOrUnknown(
          data['descripcion']!,
          _descripcionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descripcionMeta);
    }
    if (data.containsKey('costo_mano_obra')) {
      context.handle(
        _costoManoObraMeta,
        costoManoObra.isAcceptableOrUnknown(
          data['costo_mano_obra']!,
          _costoManoObraMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TrabajosRealizado map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TrabajosRealizado(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      ordenId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}orden_id'],
      )!,
      descripcion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}descripcion'],
      )!,
      costoManoObra: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}costo_mano_obra'],
      )!,
    );
  }

  @override
  $TrabajosRealizadosTable createAlias(String alias) {
    return $TrabajosRealizadosTable(attachedDatabase, alias);
  }
}

class TrabajosRealizado extends DataClass
    implements Insertable<TrabajosRealizado> {
  final int id;
  final int ordenId;
  final String descripcion;
  final double costoManoObra;
  const TrabajosRealizado({
    required this.id,
    required this.ordenId,
    required this.descripcion,
    required this.costoManoObra,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['orden_id'] = Variable<int>(ordenId);
    map['descripcion'] = Variable<String>(descripcion);
    map['costo_mano_obra'] = Variable<double>(costoManoObra);
    return map;
  }

  TrabajosRealizadosCompanion toCompanion(bool nullToAbsent) {
    return TrabajosRealizadosCompanion(
      id: Value(id),
      ordenId: Value(ordenId),
      descripcion: Value(descripcion),
      costoManoObra: Value(costoManoObra),
    );
  }

  factory TrabajosRealizado.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrabajosRealizado(
      id: serializer.fromJson<int>(json['id']),
      ordenId: serializer.fromJson<int>(json['ordenId']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      costoManoObra: serializer.fromJson<double>(json['costoManoObra']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ordenId': serializer.toJson<int>(ordenId),
      'descripcion': serializer.toJson<String>(descripcion),
      'costoManoObra': serializer.toJson<double>(costoManoObra),
    };
  }

  TrabajosRealizado copyWith({
    int? id,
    int? ordenId,
    String? descripcion,
    double? costoManoObra,
  }) => TrabajosRealizado(
    id: id ?? this.id,
    ordenId: ordenId ?? this.ordenId,
    descripcion: descripcion ?? this.descripcion,
    costoManoObra: costoManoObra ?? this.costoManoObra,
  );
  TrabajosRealizado copyWithCompanion(TrabajosRealizadosCompanion data) {
    return TrabajosRealizado(
      id: data.id.present ? data.id.value : this.id,
      ordenId: data.ordenId.present ? data.ordenId.value : this.ordenId,
      descripcion: data.descripcion.present
          ? data.descripcion.value
          : this.descripcion,
      costoManoObra: data.costoManoObra.present
          ? data.costoManoObra.value
          : this.costoManoObra,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TrabajosRealizado(')
          ..write('id: $id, ')
          ..write('ordenId: $ordenId, ')
          ..write('descripcion: $descripcion, ')
          ..write('costoManoObra: $costoManoObra')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ordenId, descripcion, costoManoObra);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrabajosRealizado &&
          other.id == this.id &&
          other.ordenId == this.ordenId &&
          other.descripcion == this.descripcion &&
          other.costoManoObra == this.costoManoObra);
}

class TrabajosRealizadosCompanion extends UpdateCompanion<TrabajosRealizado> {
  final Value<int> id;
  final Value<int> ordenId;
  final Value<String> descripcion;
  final Value<double> costoManoObra;
  const TrabajosRealizadosCompanion({
    this.id = const Value.absent(),
    this.ordenId = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.costoManoObra = const Value.absent(),
  });
  TrabajosRealizadosCompanion.insert({
    this.id = const Value.absent(),
    required int ordenId,
    required String descripcion,
    this.costoManoObra = const Value.absent(),
  }) : ordenId = Value(ordenId),
       descripcion = Value(descripcion);
  static Insertable<TrabajosRealizado> custom({
    Expression<int>? id,
    Expression<int>? ordenId,
    Expression<String>? descripcion,
    Expression<double>? costoManoObra,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ordenId != null) 'orden_id': ordenId,
      if (descripcion != null) 'descripcion': descripcion,
      if (costoManoObra != null) 'costo_mano_obra': costoManoObra,
    });
  }

  TrabajosRealizadosCompanion copyWith({
    Value<int>? id,
    Value<int>? ordenId,
    Value<String>? descripcion,
    Value<double>? costoManoObra,
  }) {
    return TrabajosRealizadosCompanion(
      id: id ?? this.id,
      ordenId: ordenId ?? this.ordenId,
      descripcion: descripcion ?? this.descripcion,
      costoManoObra: costoManoObra ?? this.costoManoObra,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ordenId.present) {
      map['orden_id'] = Variable<int>(ordenId.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (costoManoObra.present) {
      map['costo_mano_obra'] = Variable<double>(costoManoObra.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrabajosRealizadosCompanion(')
          ..write('id: $id, ')
          ..write('ordenId: $ordenId, ')
          ..write('descripcion: $descripcion, ')
          ..write('costoManoObra: $costoManoObra')
          ..write(')'))
        .toString();
  }
}

class $RepuestosTable extends Repuestos
    with TableInfo<$RepuestosTable, Repuesto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RepuestosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
    'nombre',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 120,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _codigoMeta = const VerificationMeta('codigo');
  @override
  late final GeneratedColumn<String> codigo = GeneratedColumn<String>(
    'codigo',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 80,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _precioMeta = const VerificationMeta('precio');
  @override
  late final GeneratedColumn<double> precio = GeneratedColumn<double>(
    'precio',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _stockActualMeta = const VerificationMeta(
    'stockActual',
  );
  @override
  late final GeneratedColumn<int> stockActual = GeneratedColumn<int>(
    'stock_actual',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _stockMinimoMeta = const VerificationMeta(
    'stockMinimo',
  );
  @override
  late final GeneratedColumn<int> stockMinimo = GeneratedColumn<int>(
    'stock_minimo',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nombre,
    codigo,
    precio,
    stockActual,
    stockMinimo,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'repuestos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Repuesto> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(
        _nombreMeta,
        nombre.isAcceptableOrUnknown(data['nombre']!, _nombreMeta),
      );
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    if (data.containsKey('codigo')) {
      context.handle(
        _codigoMeta,
        codigo.isAcceptableOrUnknown(data['codigo']!, _codigoMeta),
      );
    } else if (isInserting) {
      context.missing(_codigoMeta);
    }
    if (data.containsKey('precio')) {
      context.handle(
        _precioMeta,
        precio.isAcceptableOrUnknown(data['precio']!, _precioMeta),
      );
    }
    if (data.containsKey('stock_actual')) {
      context.handle(
        _stockActualMeta,
        stockActual.isAcceptableOrUnknown(
          data['stock_actual']!,
          _stockActualMeta,
        ),
      );
    }
    if (data.containsKey('stock_minimo')) {
      context.handle(
        _stockMinimoMeta,
        stockMinimo.isAcceptableOrUnknown(
          data['stock_minimo']!,
          _stockMinimoMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Repuesto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Repuesto(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nombre: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre'],
      )!,
      codigo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}codigo'],
      )!,
      precio: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}precio'],
      )!,
      stockActual: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stock_actual'],
      )!,
      stockMinimo: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stock_minimo'],
      )!,
    );
  }

  @override
  $RepuestosTable createAlias(String alias) {
    return $RepuestosTable(attachedDatabase, alias);
  }
}

class Repuesto extends DataClass implements Insertable<Repuesto> {
  final int id;
  final String nombre;
  final String codigo;
  final double precio;
  final int stockActual;
  final int stockMinimo;
  const Repuesto({
    required this.id,
    required this.nombre,
    required this.codigo,
    required this.precio,
    required this.stockActual,
    required this.stockMinimo,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nombre'] = Variable<String>(nombre);
    map['codigo'] = Variable<String>(codigo);
    map['precio'] = Variable<double>(precio);
    map['stock_actual'] = Variable<int>(stockActual);
    map['stock_minimo'] = Variable<int>(stockMinimo);
    return map;
  }

  RepuestosCompanion toCompanion(bool nullToAbsent) {
    return RepuestosCompanion(
      id: Value(id),
      nombre: Value(nombre),
      codigo: Value(codigo),
      precio: Value(precio),
      stockActual: Value(stockActual),
      stockMinimo: Value(stockMinimo),
    );
  }

  factory Repuesto.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Repuesto(
      id: serializer.fromJson<int>(json['id']),
      nombre: serializer.fromJson<String>(json['nombre']),
      codigo: serializer.fromJson<String>(json['codigo']),
      precio: serializer.fromJson<double>(json['precio']),
      stockActual: serializer.fromJson<int>(json['stockActual']),
      stockMinimo: serializer.fromJson<int>(json['stockMinimo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nombre': serializer.toJson<String>(nombre),
      'codigo': serializer.toJson<String>(codigo),
      'precio': serializer.toJson<double>(precio),
      'stockActual': serializer.toJson<int>(stockActual),
      'stockMinimo': serializer.toJson<int>(stockMinimo),
    };
  }

  Repuesto copyWith({
    int? id,
    String? nombre,
    String? codigo,
    double? precio,
    int? stockActual,
    int? stockMinimo,
  }) => Repuesto(
    id: id ?? this.id,
    nombre: nombre ?? this.nombre,
    codigo: codigo ?? this.codigo,
    precio: precio ?? this.precio,
    stockActual: stockActual ?? this.stockActual,
    stockMinimo: stockMinimo ?? this.stockMinimo,
  );
  Repuesto copyWithCompanion(RepuestosCompanion data) {
    return Repuesto(
      id: data.id.present ? data.id.value : this.id,
      nombre: data.nombre.present ? data.nombre.value : this.nombre,
      codigo: data.codigo.present ? data.codigo.value : this.codigo,
      precio: data.precio.present ? data.precio.value : this.precio,
      stockActual: data.stockActual.present
          ? data.stockActual.value
          : this.stockActual,
      stockMinimo: data.stockMinimo.present
          ? data.stockMinimo.value
          : this.stockMinimo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Repuesto(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('codigo: $codigo, ')
          ..write('precio: $precio, ')
          ..write('stockActual: $stockActual, ')
          ..write('stockMinimo: $stockMinimo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, nombre, codigo, precio, stockActual, stockMinimo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Repuesto &&
          other.id == this.id &&
          other.nombre == this.nombre &&
          other.codigo == this.codigo &&
          other.precio == this.precio &&
          other.stockActual == this.stockActual &&
          other.stockMinimo == this.stockMinimo);
}

class RepuestosCompanion extends UpdateCompanion<Repuesto> {
  final Value<int> id;
  final Value<String> nombre;
  final Value<String> codigo;
  final Value<double> precio;
  final Value<int> stockActual;
  final Value<int> stockMinimo;
  const RepuestosCompanion({
    this.id = const Value.absent(),
    this.nombre = const Value.absent(),
    this.codigo = const Value.absent(),
    this.precio = const Value.absent(),
    this.stockActual = const Value.absent(),
    this.stockMinimo = const Value.absent(),
  });
  RepuestosCompanion.insert({
    this.id = const Value.absent(),
    required String nombre,
    required String codigo,
    this.precio = const Value.absent(),
    this.stockActual = const Value.absent(),
    this.stockMinimo = const Value.absent(),
  }) : nombre = Value(nombre),
       codigo = Value(codigo);
  static Insertable<Repuesto> custom({
    Expression<int>? id,
    Expression<String>? nombre,
    Expression<String>? codigo,
    Expression<double>? precio,
    Expression<int>? stockActual,
    Expression<int>? stockMinimo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nombre != null) 'nombre': nombre,
      if (codigo != null) 'codigo': codigo,
      if (precio != null) 'precio': precio,
      if (stockActual != null) 'stock_actual': stockActual,
      if (stockMinimo != null) 'stock_minimo': stockMinimo,
    });
  }

  RepuestosCompanion copyWith({
    Value<int>? id,
    Value<String>? nombre,
    Value<String>? codigo,
    Value<double>? precio,
    Value<int>? stockActual,
    Value<int>? stockMinimo,
  }) {
    return RepuestosCompanion(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      codigo: codigo ?? this.codigo,
      precio: precio ?? this.precio,
      stockActual: stockActual ?? this.stockActual,
      stockMinimo: stockMinimo ?? this.stockMinimo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (codigo.present) {
      map['codigo'] = Variable<String>(codigo.value);
    }
    if (precio.present) {
      map['precio'] = Variable<double>(precio.value);
    }
    if (stockActual.present) {
      map['stock_actual'] = Variable<int>(stockActual.value);
    }
    if (stockMinimo.present) {
      map['stock_minimo'] = Variable<int>(stockMinimo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RepuestosCompanion(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('codigo: $codigo, ')
          ..write('precio: $precio, ')
          ..write('stockActual: $stockActual, ')
          ..write('stockMinimo: $stockMinimo')
          ..write(')'))
        .toString();
  }
}

class $RepuestosUsadosTable extends RepuestosUsados
    with TableInfo<$RepuestosUsadosTable, RepuestosUsado> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RepuestosUsadosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _ordenIdMeta = const VerificationMeta(
    'ordenId',
  );
  @override
  late final GeneratedColumn<int> ordenId = GeneratedColumn<int>(
    'orden_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ordenes_reparacion (id)',
    ),
  );
  static const VerificationMeta _repuestoIdMeta = const VerificationMeta(
    'repuestoId',
  );
  @override
  late final GeneratedColumn<int> repuestoId = GeneratedColumn<int>(
    'repuesto_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES repuestos (id)',
    ),
  );
  static const VerificationMeta _cantidadMeta = const VerificationMeta(
    'cantidad',
  );
  @override
  late final GeneratedColumn<int> cantidad = GeneratedColumn<int>(
    'cantidad',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  @override
  List<GeneratedColumn> get $columns => [id, ordenId, repuestoId, cantidad];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'repuestos_usados';
  @override
  VerificationContext validateIntegrity(
    Insertable<RepuestosUsado> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('orden_id')) {
      context.handle(
        _ordenIdMeta,
        ordenId.isAcceptableOrUnknown(data['orden_id']!, _ordenIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ordenIdMeta);
    }
    if (data.containsKey('repuesto_id')) {
      context.handle(
        _repuestoIdMeta,
        repuestoId.isAcceptableOrUnknown(data['repuesto_id']!, _repuestoIdMeta),
      );
    } else if (isInserting) {
      context.missing(_repuestoIdMeta);
    }
    if (data.containsKey('cantidad')) {
      context.handle(
        _cantidadMeta,
        cantidad.isAcceptableOrUnknown(data['cantidad']!, _cantidadMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RepuestosUsado map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RepuestosUsado(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      ordenId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}orden_id'],
      )!,
      repuestoId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}repuesto_id'],
      )!,
      cantidad: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cantidad'],
      )!,
    );
  }

  @override
  $RepuestosUsadosTable createAlias(String alias) {
    return $RepuestosUsadosTable(attachedDatabase, alias);
  }
}

class RepuestosUsado extends DataClass implements Insertable<RepuestosUsado> {
  final int id;
  final int ordenId;
  final int repuestoId;
  final int cantidad;
  const RepuestosUsado({
    required this.id,
    required this.ordenId,
    required this.repuestoId,
    required this.cantidad,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['orden_id'] = Variable<int>(ordenId);
    map['repuesto_id'] = Variable<int>(repuestoId);
    map['cantidad'] = Variable<int>(cantidad);
    return map;
  }

  RepuestosUsadosCompanion toCompanion(bool nullToAbsent) {
    return RepuestosUsadosCompanion(
      id: Value(id),
      ordenId: Value(ordenId),
      repuestoId: Value(repuestoId),
      cantidad: Value(cantidad),
    );
  }

  factory RepuestosUsado.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RepuestosUsado(
      id: serializer.fromJson<int>(json['id']),
      ordenId: serializer.fromJson<int>(json['ordenId']),
      repuestoId: serializer.fromJson<int>(json['repuestoId']),
      cantidad: serializer.fromJson<int>(json['cantidad']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ordenId': serializer.toJson<int>(ordenId),
      'repuestoId': serializer.toJson<int>(repuestoId),
      'cantidad': serializer.toJson<int>(cantidad),
    };
  }

  RepuestosUsado copyWith({
    int? id,
    int? ordenId,
    int? repuestoId,
    int? cantidad,
  }) => RepuestosUsado(
    id: id ?? this.id,
    ordenId: ordenId ?? this.ordenId,
    repuestoId: repuestoId ?? this.repuestoId,
    cantidad: cantidad ?? this.cantidad,
  );
  RepuestosUsado copyWithCompanion(RepuestosUsadosCompanion data) {
    return RepuestosUsado(
      id: data.id.present ? data.id.value : this.id,
      ordenId: data.ordenId.present ? data.ordenId.value : this.ordenId,
      repuestoId: data.repuestoId.present
          ? data.repuestoId.value
          : this.repuestoId,
      cantidad: data.cantidad.present ? data.cantidad.value : this.cantidad,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RepuestosUsado(')
          ..write('id: $id, ')
          ..write('ordenId: $ordenId, ')
          ..write('repuestoId: $repuestoId, ')
          ..write('cantidad: $cantidad')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ordenId, repuestoId, cantidad);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RepuestosUsado &&
          other.id == this.id &&
          other.ordenId == this.ordenId &&
          other.repuestoId == this.repuestoId &&
          other.cantidad == this.cantidad);
}

class RepuestosUsadosCompanion extends UpdateCompanion<RepuestosUsado> {
  final Value<int> id;
  final Value<int> ordenId;
  final Value<int> repuestoId;
  final Value<int> cantidad;
  const RepuestosUsadosCompanion({
    this.id = const Value.absent(),
    this.ordenId = const Value.absent(),
    this.repuestoId = const Value.absent(),
    this.cantidad = const Value.absent(),
  });
  RepuestosUsadosCompanion.insert({
    this.id = const Value.absent(),
    required int ordenId,
    required int repuestoId,
    this.cantidad = const Value.absent(),
  }) : ordenId = Value(ordenId),
       repuestoId = Value(repuestoId);
  static Insertable<RepuestosUsado> custom({
    Expression<int>? id,
    Expression<int>? ordenId,
    Expression<int>? repuestoId,
    Expression<int>? cantidad,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ordenId != null) 'orden_id': ordenId,
      if (repuestoId != null) 'repuesto_id': repuestoId,
      if (cantidad != null) 'cantidad': cantidad,
    });
  }

  RepuestosUsadosCompanion copyWith({
    Value<int>? id,
    Value<int>? ordenId,
    Value<int>? repuestoId,
    Value<int>? cantidad,
  }) {
    return RepuestosUsadosCompanion(
      id: id ?? this.id,
      ordenId: ordenId ?? this.ordenId,
      repuestoId: repuestoId ?? this.repuestoId,
      cantidad: cantidad ?? this.cantidad,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ordenId.present) {
      map['orden_id'] = Variable<int>(ordenId.value);
    }
    if (repuestoId.present) {
      map['repuesto_id'] = Variable<int>(repuestoId.value);
    }
    if (cantidad.present) {
      map['cantidad'] = Variable<int>(cantidad.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RepuestosUsadosCompanion(')
          ..write('id: $id, ')
          ..write('ordenId: $ordenId, ')
          ..write('repuestoId: $repuestoId, ')
          ..write('cantidad: $cantidad')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TecnicosTable tecnicos = $TecnicosTable(this);
  late final $ClientesTable clientes = $ClientesTable(this);
  late final $EquiposTable equipos = $EquiposTable(this);
  late final $OrdenesReparacionTable ordenesReparacion =
      $OrdenesReparacionTable(this);
  late final $TrabajosRealizadosTable trabajosRealizados =
      $TrabajosRealizadosTable(this);
  late final $RepuestosTable repuestos = $RepuestosTable(this);
  late final $RepuestosUsadosTable repuestosUsados = $RepuestosUsadosTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    tecnicos,
    clientes,
    equipos,
    ordenesReparacion,
    trabajosRealizados,
    repuestos,
    repuestosUsados,
  ];
}

typedef $$TecnicosTableCreateCompanionBuilder =
    TecnicosCompanion Function({Value<int> id, required String nombre});
typedef $$TecnicosTableUpdateCompanionBuilder =
    TecnicosCompanion Function({Value<int> id, Value<String> nombre});

final class $$TecnicosTableReferences
    extends BaseReferences<_$AppDatabase, $TecnicosTable, Tecnico> {
  $$TecnicosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $OrdenesReparacionTable,
    List<OrdenesReparacionData>
  >
  _ordenesReparacionRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.ordenesReparacion,
        aliasName: $_aliasNameGenerator(
          db.tecnicos.id,
          db.ordenesReparacion.tecnicoId,
        ),
      );

  $$OrdenesReparacionTableProcessedTableManager get ordenesReparacionRefs {
    final manager = $$OrdenesReparacionTableTableManager(
      $_db,
      $_db.ordenesReparacion,
    ).filter((f) => f.tecnicoId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _ordenesReparacionRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TecnicosTableFilterComposer
    extends Composer<_$AppDatabase, $TecnicosTable> {
  $$TecnicosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> ordenesReparacionRefs(
    Expression<bool> Function($$OrdenesReparacionTableFilterComposer f) f,
  ) {
    final $$OrdenesReparacionTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.ordenesReparacion,
      getReferencedColumn: (t) => t.tecnicoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrdenesReparacionTableFilterComposer(
            $db: $db,
            $table: $db.ordenesReparacion,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TecnicosTableOrderingComposer
    extends Composer<_$AppDatabase, $TecnicosTable> {
  $$TecnicosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TecnicosTableAnnotationComposer
    extends Composer<_$AppDatabase, $TecnicosTable> {
  $$TecnicosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombre =>
      $composableBuilder(column: $table.nombre, builder: (column) => column);

  Expression<T> ordenesReparacionRefs<T extends Object>(
    Expression<T> Function($$OrdenesReparacionTableAnnotationComposer a) f,
  ) {
    final $$OrdenesReparacionTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.ordenesReparacion,
          getReferencedColumn: (t) => t.tecnicoId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$OrdenesReparacionTableAnnotationComposer(
                $db: $db,
                $table: $db.ordenesReparacion,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$TecnicosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TecnicosTable,
          Tecnico,
          $$TecnicosTableFilterComposer,
          $$TecnicosTableOrderingComposer,
          $$TecnicosTableAnnotationComposer,
          $$TecnicosTableCreateCompanionBuilder,
          $$TecnicosTableUpdateCompanionBuilder,
          (Tecnico, $$TecnicosTableReferences),
          Tecnico,
          PrefetchHooks Function({bool ordenesReparacionRefs})
        > {
  $$TecnicosTableTableManager(_$AppDatabase db, $TecnicosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TecnicosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TecnicosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TecnicosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nombre = const Value.absent(),
              }) => TecnicosCompanion(id: id, nombre: nombre),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nombre,
              }) => TecnicosCompanion.insert(id: id, nombre: nombre),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TecnicosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({ordenesReparacionRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (ordenesReparacionRefs) db.ordenesReparacion,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (ordenesReparacionRefs)
                    await $_getPrefetchedData<
                      Tecnico,
                      $TecnicosTable,
                      OrdenesReparacionData
                    >(
                      currentTable: table,
                      referencedTable: $$TecnicosTableReferences
                          ._ordenesReparacionRefsTable(db),
                      managerFromTypedResult: (p0) => $$TecnicosTableReferences(
                        db,
                        table,
                        p0,
                      ).ordenesReparacionRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.tecnicoId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$TecnicosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TecnicosTable,
      Tecnico,
      $$TecnicosTableFilterComposer,
      $$TecnicosTableOrderingComposer,
      $$TecnicosTableAnnotationComposer,
      $$TecnicosTableCreateCompanionBuilder,
      $$TecnicosTableUpdateCompanionBuilder,
      (Tecnico, $$TecnicosTableReferences),
      Tecnico,
      PrefetchHooks Function({bool ordenesReparacionRefs})
    >;
typedef $$ClientesTableCreateCompanionBuilder =
    ClientesCompanion Function({
      Value<int> id,
      required String nombre,
      required String telefono,
    });
typedef $$ClientesTableUpdateCompanionBuilder =
    ClientesCompanion Function({
      Value<int> id,
      Value<String> nombre,
      Value<String> telefono,
    });

final class $$ClientesTableReferences
    extends BaseReferences<_$AppDatabase, $ClientesTable, Cliente> {
  $$ClientesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$EquiposTable, List<Equipo>> _equiposRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.equipos,
    aliasName: $_aliasNameGenerator(db.clientes.id, db.equipos.clienteId),
  );

  $$EquiposTableProcessedTableManager get equiposRefs {
    final manager = $$EquiposTableTableManager(
      $_db,
      $_db.equipos,
    ).filter((f) => f.clienteId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_equiposRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ClientesTableFilterComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get telefono => $composableBuilder(
    column: $table.telefono,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> equiposRefs(
    Expression<bool> Function($$EquiposTableFilterComposer f) f,
  ) {
    final $$EquiposTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.equipos,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EquiposTableFilterComposer(
            $db: $db,
            $table: $db.equipos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClientesTableOrderingComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get telefono => $composableBuilder(
    column: $table.telefono,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClientesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombre =>
      $composableBuilder(column: $table.nombre, builder: (column) => column);

  GeneratedColumn<String> get telefono =>
      $composableBuilder(column: $table.telefono, builder: (column) => column);

  Expression<T> equiposRefs<T extends Object>(
    Expression<T> Function($$EquiposTableAnnotationComposer a) f,
  ) {
    final $$EquiposTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.equipos,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EquiposTableAnnotationComposer(
            $db: $db,
            $table: $db.equipos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClientesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClientesTable,
          Cliente,
          $$ClientesTableFilterComposer,
          $$ClientesTableOrderingComposer,
          $$ClientesTableAnnotationComposer,
          $$ClientesTableCreateCompanionBuilder,
          $$ClientesTableUpdateCompanionBuilder,
          (Cliente, $$ClientesTableReferences),
          Cliente,
          PrefetchHooks Function({bool equiposRefs})
        > {
  $$ClientesTableTableManager(_$AppDatabase db, $ClientesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nombre = const Value.absent(),
                Value<String> telefono = const Value.absent(),
              }) =>
                  ClientesCompanion(id: id, nombre: nombre, telefono: telefono),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nombre,
                required String telefono,
              }) => ClientesCompanion.insert(
                id: id,
                nombre: nombre,
                telefono: telefono,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ClientesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({equiposRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (equiposRefs) db.equipos],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (equiposRefs)
                    await $_getPrefetchedData<Cliente, $ClientesTable, Equipo>(
                      currentTable: table,
                      referencedTable: $$ClientesTableReferences
                          ._equiposRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ClientesTableReferences(db, table, p0).equiposRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.clienteId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ClientesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClientesTable,
      Cliente,
      $$ClientesTableFilterComposer,
      $$ClientesTableOrderingComposer,
      $$ClientesTableAnnotationComposer,
      $$ClientesTableCreateCompanionBuilder,
      $$ClientesTableUpdateCompanionBuilder,
      (Cliente, $$ClientesTableReferences),
      Cliente,
      PrefetchHooks Function({bool equiposRefs})
    >;
typedef $$EquiposTableCreateCompanionBuilder =
    EquiposCompanion Function({
      Value<int> id,
      required String tipo,
      required String marca,
      required String modelo,
      required String numeroSerie,
      required int clienteId,
    });
typedef $$EquiposTableUpdateCompanionBuilder =
    EquiposCompanion Function({
      Value<int> id,
      Value<String> tipo,
      Value<String> marca,
      Value<String> modelo,
      Value<String> numeroSerie,
      Value<int> clienteId,
    });

final class $$EquiposTableReferences
    extends BaseReferences<_$AppDatabase, $EquiposTable, Equipo> {
  $$EquiposTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClientesTable _clienteIdTable(_$AppDatabase db) => db.clientes
      .createAlias($_aliasNameGenerator(db.equipos.clienteId, db.clientes.id));

  $$ClientesTableProcessedTableManager get clienteId {
    final $_column = $_itemColumn<int>('cliente_id')!;

    final manager = $$ClientesTableTableManager(
      $_db,
      $_db.clientes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_clienteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $OrdenesReparacionTable,
    List<OrdenesReparacionData>
  >
  _ordenesReparacionRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.ordenesReparacion,
        aliasName: $_aliasNameGenerator(
          db.equipos.id,
          db.ordenesReparacion.equipoId,
        ),
      );

  $$OrdenesReparacionTableProcessedTableManager get ordenesReparacionRefs {
    final manager = $$OrdenesReparacionTableTableManager(
      $_db,
      $_db.ordenesReparacion,
    ).filter((f) => f.equipoId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _ordenesReparacionRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$EquiposTableFilterComposer
    extends Composer<_$AppDatabase, $EquiposTable> {
  $$EquiposTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tipo => $composableBuilder(
    column: $table.tipo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get marca => $composableBuilder(
    column: $table.marca,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get modelo => $composableBuilder(
    column: $table.modelo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get numeroSerie => $composableBuilder(
    column: $table.numeroSerie,
    builder: (column) => ColumnFilters(column),
  );

  $$ClientesTableFilterComposer get clienteId {
    final $$ClientesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableFilterComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> ordenesReparacionRefs(
    Expression<bool> Function($$OrdenesReparacionTableFilterComposer f) f,
  ) {
    final $$OrdenesReparacionTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.ordenesReparacion,
      getReferencedColumn: (t) => t.equipoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrdenesReparacionTableFilterComposer(
            $db: $db,
            $table: $db.ordenesReparacion,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EquiposTableOrderingComposer
    extends Composer<_$AppDatabase, $EquiposTable> {
  $$EquiposTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tipo => $composableBuilder(
    column: $table.tipo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get marca => $composableBuilder(
    column: $table.marca,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get modelo => $composableBuilder(
    column: $table.modelo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get numeroSerie => $composableBuilder(
    column: $table.numeroSerie,
    builder: (column) => ColumnOrderings(column),
  );

  $$ClientesTableOrderingComposer get clienteId {
    final $$ClientesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableOrderingComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EquiposTableAnnotationComposer
    extends Composer<_$AppDatabase, $EquiposTable> {
  $$EquiposTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get tipo =>
      $composableBuilder(column: $table.tipo, builder: (column) => column);

  GeneratedColumn<String> get marca =>
      $composableBuilder(column: $table.marca, builder: (column) => column);

  GeneratedColumn<String> get modelo =>
      $composableBuilder(column: $table.modelo, builder: (column) => column);

  GeneratedColumn<String> get numeroSerie => $composableBuilder(
    column: $table.numeroSerie,
    builder: (column) => column,
  );

  $$ClientesTableAnnotationComposer get clienteId {
    final $$ClientesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableAnnotationComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> ordenesReparacionRefs<T extends Object>(
    Expression<T> Function($$OrdenesReparacionTableAnnotationComposer a) f,
  ) {
    final $$OrdenesReparacionTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.ordenesReparacion,
          getReferencedColumn: (t) => t.equipoId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$OrdenesReparacionTableAnnotationComposer(
                $db: $db,
                $table: $db.ordenesReparacion,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$EquiposTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EquiposTable,
          Equipo,
          $$EquiposTableFilterComposer,
          $$EquiposTableOrderingComposer,
          $$EquiposTableAnnotationComposer,
          $$EquiposTableCreateCompanionBuilder,
          $$EquiposTableUpdateCompanionBuilder,
          (Equipo, $$EquiposTableReferences),
          Equipo,
          PrefetchHooks Function({bool clienteId, bool ordenesReparacionRefs})
        > {
  $$EquiposTableTableManager(_$AppDatabase db, $EquiposTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EquiposTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EquiposTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EquiposTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> tipo = const Value.absent(),
                Value<String> marca = const Value.absent(),
                Value<String> modelo = const Value.absent(),
                Value<String> numeroSerie = const Value.absent(),
                Value<int> clienteId = const Value.absent(),
              }) => EquiposCompanion(
                id: id,
                tipo: tipo,
                marca: marca,
                modelo: modelo,
                numeroSerie: numeroSerie,
                clienteId: clienteId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String tipo,
                required String marca,
                required String modelo,
                required String numeroSerie,
                required int clienteId,
              }) => EquiposCompanion.insert(
                id: id,
                tipo: tipo,
                marca: marca,
                modelo: modelo,
                numeroSerie: numeroSerie,
                clienteId: clienteId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$EquiposTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({clienteId = false, ordenesReparacionRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (ordenesReparacionRefs) db.ordenesReparacion,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (clienteId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.clienteId,
                                    referencedTable: $$EquiposTableReferences
                                        ._clienteIdTable(db),
                                    referencedColumn: $$EquiposTableReferences
                                        ._clienteIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (ordenesReparacionRefs)
                        await $_getPrefetchedData<
                          Equipo,
                          $EquiposTable,
                          OrdenesReparacionData
                        >(
                          currentTable: table,
                          referencedTable: $$EquiposTableReferences
                              ._ordenesReparacionRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$EquiposTableReferences(
                                db,
                                table,
                                p0,
                              ).ordenesReparacionRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.equipoId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$EquiposTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EquiposTable,
      Equipo,
      $$EquiposTableFilterComposer,
      $$EquiposTableOrderingComposer,
      $$EquiposTableAnnotationComposer,
      $$EquiposTableCreateCompanionBuilder,
      $$EquiposTableUpdateCompanionBuilder,
      (Equipo, $$EquiposTableReferences),
      Equipo,
      PrefetchHooks Function({bool clienteId, bool ordenesReparacionRefs})
    >;
typedef $$OrdenesReparacionTableCreateCompanionBuilder =
    OrdenesReparacionCompanion Function({
      Value<int> id,
      required int equipoId,
      Value<int?> tecnicoId,
      Value<int> estadoIndex,
      required String fallaReportada,
      Value<DateTime> fechaCreacion,
      Value<DateTime> fechaActualizacion,
    });
typedef $$OrdenesReparacionTableUpdateCompanionBuilder =
    OrdenesReparacionCompanion Function({
      Value<int> id,
      Value<int> equipoId,
      Value<int?> tecnicoId,
      Value<int> estadoIndex,
      Value<String> fallaReportada,
      Value<DateTime> fechaCreacion,
      Value<DateTime> fechaActualizacion,
    });

final class $$OrdenesReparacionTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $OrdenesReparacionTable,
          OrdenesReparacionData
        > {
  $$OrdenesReparacionTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $EquiposTable _equipoIdTable(_$AppDatabase db) =>
      db.equipos.createAlias(
        $_aliasNameGenerator(db.ordenesReparacion.equipoId, db.equipos.id),
      );

  $$EquiposTableProcessedTableManager get equipoId {
    final $_column = $_itemColumn<int>('equipo_id')!;

    final manager = $$EquiposTableTableManager(
      $_db,
      $_db.equipos,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_equipoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TecnicosTable _tecnicoIdTable(_$AppDatabase db) =>
      db.tecnicos.createAlias(
        $_aliasNameGenerator(db.ordenesReparacion.tecnicoId, db.tecnicos.id),
      );

  $$TecnicosTableProcessedTableManager? get tecnicoId {
    final $_column = $_itemColumn<int>('tecnico_id');
    if ($_column == null) return null;
    final manager = $$TecnicosTableTableManager(
      $_db,
      $_db.tecnicos,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tecnicoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$TrabajosRealizadosTable, List<TrabajosRealizado>>
  _trabajosRealizadosRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.trabajosRealizados,
        aliasName: $_aliasNameGenerator(
          db.ordenesReparacion.id,
          db.trabajosRealizados.ordenId,
        ),
      );

  $$TrabajosRealizadosTableProcessedTableManager get trabajosRealizadosRefs {
    final manager = $$TrabajosRealizadosTableTableManager(
      $_db,
      $_db.trabajosRealizados,
    ).filter((f) => f.ordenId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _trabajosRealizadosRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RepuestosUsadosTable, List<RepuestosUsado>>
  _repuestosUsadosRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.repuestosUsados,
    aliasName: $_aliasNameGenerator(
      db.ordenesReparacion.id,
      db.repuestosUsados.ordenId,
    ),
  );

  $$RepuestosUsadosTableProcessedTableManager get repuestosUsadosRefs {
    final manager = $$RepuestosUsadosTableTableManager(
      $_db,
      $_db.repuestosUsados,
    ).filter((f) => f.ordenId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _repuestosUsadosRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$OrdenesReparacionTableFilterComposer
    extends Composer<_$AppDatabase, $OrdenesReparacionTable> {
  $$OrdenesReparacionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get estadoIndex => $composableBuilder(
    column: $table.estadoIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fallaReportada => $composableBuilder(
    column: $table.fallaReportada,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaCreacion => $composableBuilder(
    column: $table.fechaCreacion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaActualizacion => $composableBuilder(
    column: $table.fechaActualizacion,
    builder: (column) => ColumnFilters(column),
  );

  $$EquiposTableFilterComposer get equipoId {
    final $$EquiposTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.equipoId,
      referencedTable: $db.equipos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EquiposTableFilterComposer(
            $db: $db,
            $table: $db.equipos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TecnicosTableFilterComposer get tecnicoId {
    final $$TecnicosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tecnicoId,
      referencedTable: $db.tecnicos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TecnicosTableFilterComposer(
            $db: $db,
            $table: $db.tecnicos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> trabajosRealizadosRefs(
    Expression<bool> Function($$TrabajosRealizadosTableFilterComposer f) f,
  ) {
    final $$TrabajosRealizadosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.trabajosRealizados,
      getReferencedColumn: (t) => t.ordenId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrabajosRealizadosTableFilterComposer(
            $db: $db,
            $table: $db.trabajosRealizados,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> repuestosUsadosRefs(
    Expression<bool> Function($$RepuestosUsadosTableFilterComposer f) f,
  ) {
    final $$RepuestosUsadosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.repuestosUsados,
      getReferencedColumn: (t) => t.ordenId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RepuestosUsadosTableFilterComposer(
            $db: $db,
            $table: $db.repuestosUsados,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$OrdenesReparacionTableOrderingComposer
    extends Composer<_$AppDatabase, $OrdenesReparacionTable> {
  $$OrdenesReparacionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get estadoIndex => $composableBuilder(
    column: $table.estadoIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fallaReportada => $composableBuilder(
    column: $table.fallaReportada,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaCreacion => $composableBuilder(
    column: $table.fechaCreacion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaActualizacion => $composableBuilder(
    column: $table.fechaActualizacion,
    builder: (column) => ColumnOrderings(column),
  );

  $$EquiposTableOrderingComposer get equipoId {
    final $$EquiposTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.equipoId,
      referencedTable: $db.equipos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EquiposTableOrderingComposer(
            $db: $db,
            $table: $db.equipos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TecnicosTableOrderingComposer get tecnicoId {
    final $$TecnicosTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tecnicoId,
      referencedTable: $db.tecnicos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TecnicosTableOrderingComposer(
            $db: $db,
            $table: $db.tecnicos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OrdenesReparacionTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrdenesReparacionTable> {
  $$OrdenesReparacionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get estadoIndex => $composableBuilder(
    column: $table.estadoIndex,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fallaReportada => $composableBuilder(
    column: $table.fallaReportada,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fechaCreacion => $composableBuilder(
    column: $table.fechaCreacion,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fechaActualizacion => $composableBuilder(
    column: $table.fechaActualizacion,
    builder: (column) => column,
  );

  $$EquiposTableAnnotationComposer get equipoId {
    final $$EquiposTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.equipoId,
      referencedTable: $db.equipos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EquiposTableAnnotationComposer(
            $db: $db,
            $table: $db.equipos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TecnicosTableAnnotationComposer get tecnicoId {
    final $$TecnicosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tecnicoId,
      referencedTable: $db.tecnicos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TecnicosTableAnnotationComposer(
            $db: $db,
            $table: $db.tecnicos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> trabajosRealizadosRefs<T extends Object>(
    Expression<T> Function($$TrabajosRealizadosTableAnnotationComposer a) f,
  ) {
    final $$TrabajosRealizadosTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.trabajosRealizados,
          getReferencedColumn: (t) => t.ordenId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TrabajosRealizadosTableAnnotationComposer(
                $db: $db,
                $table: $db.trabajosRealizados,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> repuestosUsadosRefs<T extends Object>(
    Expression<T> Function($$RepuestosUsadosTableAnnotationComposer a) f,
  ) {
    final $$RepuestosUsadosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.repuestosUsados,
      getReferencedColumn: (t) => t.ordenId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RepuestosUsadosTableAnnotationComposer(
            $db: $db,
            $table: $db.repuestosUsados,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$OrdenesReparacionTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OrdenesReparacionTable,
          OrdenesReparacionData,
          $$OrdenesReparacionTableFilterComposer,
          $$OrdenesReparacionTableOrderingComposer,
          $$OrdenesReparacionTableAnnotationComposer,
          $$OrdenesReparacionTableCreateCompanionBuilder,
          $$OrdenesReparacionTableUpdateCompanionBuilder,
          (OrdenesReparacionData, $$OrdenesReparacionTableReferences),
          OrdenesReparacionData,
          PrefetchHooks Function({
            bool equipoId,
            bool tecnicoId,
            bool trabajosRealizadosRefs,
            bool repuestosUsadosRefs,
          })
        > {
  $$OrdenesReparacionTableTableManager(
    _$AppDatabase db,
    $OrdenesReparacionTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrdenesReparacionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrdenesReparacionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrdenesReparacionTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> equipoId = const Value.absent(),
                Value<int?> tecnicoId = const Value.absent(),
                Value<int> estadoIndex = const Value.absent(),
                Value<String> fallaReportada = const Value.absent(),
                Value<DateTime> fechaCreacion = const Value.absent(),
                Value<DateTime> fechaActualizacion = const Value.absent(),
              }) => OrdenesReparacionCompanion(
                id: id,
                equipoId: equipoId,
                tecnicoId: tecnicoId,
                estadoIndex: estadoIndex,
                fallaReportada: fallaReportada,
                fechaCreacion: fechaCreacion,
                fechaActualizacion: fechaActualizacion,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int equipoId,
                Value<int?> tecnicoId = const Value.absent(),
                Value<int> estadoIndex = const Value.absent(),
                required String fallaReportada,
                Value<DateTime> fechaCreacion = const Value.absent(),
                Value<DateTime> fechaActualizacion = const Value.absent(),
              }) => OrdenesReparacionCompanion.insert(
                id: id,
                equipoId: equipoId,
                tecnicoId: tecnicoId,
                estadoIndex: estadoIndex,
                fallaReportada: fallaReportada,
                fechaCreacion: fechaCreacion,
                fechaActualizacion: fechaActualizacion,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$OrdenesReparacionTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                equipoId = false,
                tecnicoId = false,
                trabajosRealizadosRefs = false,
                repuestosUsadosRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (trabajosRealizadosRefs) db.trabajosRealizados,
                    if (repuestosUsadosRefs) db.repuestosUsados,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (equipoId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.equipoId,
                                    referencedTable:
                                        $$OrdenesReparacionTableReferences
                                            ._equipoIdTable(db),
                                    referencedColumn:
                                        $$OrdenesReparacionTableReferences
                                            ._equipoIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (tecnicoId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.tecnicoId,
                                    referencedTable:
                                        $$OrdenesReparacionTableReferences
                                            ._tecnicoIdTable(db),
                                    referencedColumn:
                                        $$OrdenesReparacionTableReferences
                                            ._tecnicoIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (trabajosRealizadosRefs)
                        await $_getPrefetchedData<
                          OrdenesReparacionData,
                          $OrdenesReparacionTable,
                          TrabajosRealizado
                        >(
                          currentTable: table,
                          referencedTable: $$OrdenesReparacionTableReferences
                              ._trabajosRealizadosRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$OrdenesReparacionTableReferences(
                                db,
                                table,
                                p0,
                              ).trabajosRealizadosRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ordenId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (repuestosUsadosRefs)
                        await $_getPrefetchedData<
                          OrdenesReparacionData,
                          $OrdenesReparacionTable,
                          RepuestosUsado
                        >(
                          currentTable: table,
                          referencedTable: $$OrdenesReparacionTableReferences
                              ._repuestosUsadosRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$OrdenesReparacionTableReferences(
                                db,
                                table,
                                p0,
                              ).repuestosUsadosRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ordenId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$OrdenesReparacionTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OrdenesReparacionTable,
      OrdenesReparacionData,
      $$OrdenesReparacionTableFilterComposer,
      $$OrdenesReparacionTableOrderingComposer,
      $$OrdenesReparacionTableAnnotationComposer,
      $$OrdenesReparacionTableCreateCompanionBuilder,
      $$OrdenesReparacionTableUpdateCompanionBuilder,
      (OrdenesReparacionData, $$OrdenesReparacionTableReferences),
      OrdenesReparacionData,
      PrefetchHooks Function({
        bool equipoId,
        bool tecnicoId,
        bool trabajosRealizadosRefs,
        bool repuestosUsadosRefs,
      })
    >;
typedef $$TrabajosRealizadosTableCreateCompanionBuilder =
    TrabajosRealizadosCompanion Function({
      Value<int> id,
      required int ordenId,
      required String descripcion,
      Value<double> costoManoObra,
    });
typedef $$TrabajosRealizadosTableUpdateCompanionBuilder =
    TrabajosRealizadosCompanion Function({
      Value<int> id,
      Value<int> ordenId,
      Value<String> descripcion,
      Value<double> costoManoObra,
    });

final class $$TrabajosRealizadosTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $TrabajosRealizadosTable,
          TrabajosRealizado
        > {
  $$TrabajosRealizadosTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $OrdenesReparacionTable _ordenIdTable(_$AppDatabase db) =>
      db.ordenesReparacion.createAlias(
        $_aliasNameGenerator(
          db.trabajosRealizados.ordenId,
          db.ordenesReparacion.id,
        ),
      );

  $$OrdenesReparacionTableProcessedTableManager get ordenId {
    final $_column = $_itemColumn<int>('orden_id')!;

    final manager = $$OrdenesReparacionTableTableManager(
      $_db,
      $_db.ordenesReparacion,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ordenIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TrabajosRealizadosTableFilterComposer
    extends Composer<_$AppDatabase, $TrabajosRealizadosTable> {
  $$TrabajosRealizadosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get descripcion => $composableBuilder(
    column: $table.descripcion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get costoManoObra => $composableBuilder(
    column: $table.costoManoObra,
    builder: (column) => ColumnFilters(column),
  );

  $$OrdenesReparacionTableFilterComposer get ordenId {
    final $$OrdenesReparacionTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ordenId,
      referencedTable: $db.ordenesReparacion,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrdenesReparacionTableFilterComposer(
            $db: $db,
            $table: $db.ordenesReparacion,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TrabajosRealizadosTableOrderingComposer
    extends Composer<_$AppDatabase, $TrabajosRealizadosTable> {
  $$TrabajosRealizadosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get descripcion => $composableBuilder(
    column: $table.descripcion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get costoManoObra => $composableBuilder(
    column: $table.costoManoObra,
    builder: (column) => ColumnOrderings(column),
  );

  $$OrdenesReparacionTableOrderingComposer get ordenId {
    final $$OrdenesReparacionTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ordenId,
      referencedTable: $db.ordenesReparacion,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrdenesReparacionTableOrderingComposer(
            $db: $db,
            $table: $db.ordenesReparacion,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TrabajosRealizadosTableAnnotationComposer
    extends Composer<_$AppDatabase, $TrabajosRealizadosTable> {
  $$TrabajosRealizadosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get descripcion => $composableBuilder(
    column: $table.descripcion,
    builder: (column) => column,
  );

  GeneratedColumn<double> get costoManoObra => $composableBuilder(
    column: $table.costoManoObra,
    builder: (column) => column,
  );

  $$OrdenesReparacionTableAnnotationComposer get ordenId {
    final $$OrdenesReparacionTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.ordenId,
          referencedTable: $db.ordenesReparacion,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$OrdenesReparacionTableAnnotationComposer(
                $db: $db,
                $table: $db.ordenesReparacion,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$TrabajosRealizadosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TrabajosRealizadosTable,
          TrabajosRealizado,
          $$TrabajosRealizadosTableFilterComposer,
          $$TrabajosRealizadosTableOrderingComposer,
          $$TrabajosRealizadosTableAnnotationComposer,
          $$TrabajosRealizadosTableCreateCompanionBuilder,
          $$TrabajosRealizadosTableUpdateCompanionBuilder,
          (TrabajosRealizado, $$TrabajosRealizadosTableReferences),
          TrabajosRealizado,
          PrefetchHooks Function({bool ordenId})
        > {
  $$TrabajosRealizadosTableTableManager(
    _$AppDatabase db,
    $TrabajosRealizadosTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TrabajosRealizadosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TrabajosRealizadosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TrabajosRealizadosTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> ordenId = const Value.absent(),
                Value<String> descripcion = const Value.absent(),
                Value<double> costoManoObra = const Value.absent(),
              }) => TrabajosRealizadosCompanion(
                id: id,
                ordenId: ordenId,
                descripcion: descripcion,
                costoManoObra: costoManoObra,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int ordenId,
                required String descripcion,
                Value<double> costoManoObra = const Value.absent(),
              }) => TrabajosRealizadosCompanion.insert(
                id: id,
                ordenId: ordenId,
                descripcion: descripcion,
                costoManoObra: costoManoObra,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TrabajosRealizadosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({ordenId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (ordenId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ordenId,
                                referencedTable:
                                    $$TrabajosRealizadosTableReferences
                                        ._ordenIdTable(db),
                                referencedColumn:
                                    $$TrabajosRealizadosTableReferences
                                        ._ordenIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TrabajosRealizadosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TrabajosRealizadosTable,
      TrabajosRealizado,
      $$TrabajosRealizadosTableFilterComposer,
      $$TrabajosRealizadosTableOrderingComposer,
      $$TrabajosRealizadosTableAnnotationComposer,
      $$TrabajosRealizadosTableCreateCompanionBuilder,
      $$TrabajosRealizadosTableUpdateCompanionBuilder,
      (TrabajosRealizado, $$TrabajosRealizadosTableReferences),
      TrabajosRealizado,
      PrefetchHooks Function({bool ordenId})
    >;
typedef $$RepuestosTableCreateCompanionBuilder =
    RepuestosCompanion Function({
      Value<int> id,
      required String nombre,
      required String codigo,
      Value<double> precio,
      Value<int> stockActual,
      Value<int> stockMinimo,
    });
typedef $$RepuestosTableUpdateCompanionBuilder =
    RepuestosCompanion Function({
      Value<int> id,
      Value<String> nombre,
      Value<String> codigo,
      Value<double> precio,
      Value<int> stockActual,
      Value<int> stockMinimo,
    });

final class $$RepuestosTableReferences
    extends BaseReferences<_$AppDatabase, $RepuestosTable, Repuesto> {
  $$RepuestosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RepuestosUsadosTable, List<RepuestosUsado>>
  _repuestosUsadosRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.repuestosUsados,
    aliasName: $_aliasNameGenerator(
      db.repuestos.id,
      db.repuestosUsados.repuestoId,
    ),
  );

  $$RepuestosUsadosTableProcessedTableManager get repuestosUsadosRefs {
    final manager = $$RepuestosUsadosTableTableManager(
      $_db,
      $_db.repuestosUsados,
    ).filter((f) => f.repuestoId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _repuestosUsadosRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RepuestosTableFilterComposer
    extends Composer<_$AppDatabase, $RepuestosTable> {
  $$RepuestosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get codigo => $composableBuilder(
    column: $table.codigo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get precio => $composableBuilder(
    column: $table.precio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stockActual => $composableBuilder(
    column: $table.stockActual,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stockMinimo => $composableBuilder(
    column: $table.stockMinimo,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> repuestosUsadosRefs(
    Expression<bool> Function($$RepuestosUsadosTableFilterComposer f) f,
  ) {
    final $$RepuestosUsadosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.repuestosUsados,
      getReferencedColumn: (t) => t.repuestoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RepuestosUsadosTableFilterComposer(
            $db: $db,
            $table: $db.repuestosUsados,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RepuestosTableOrderingComposer
    extends Composer<_$AppDatabase, $RepuestosTable> {
  $$RepuestosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get codigo => $composableBuilder(
    column: $table.codigo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get precio => $composableBuilder(
    column: $table.precio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stockActual => $composableBuilder(
    column: $table.stockActual,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stockMinimo => $composableBuilder(
    column: $table.stockMinimo,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RepuestosTableAnnotationComposer
    extends Composer<_$AppDatabase, $RepuestosTable> {
  $$RepuestosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombre =>
      $composableBuilder(column: $table.nombre, builder: (column) => column);

  GeneratedColumn<String> get codigo =>
      $composableBuilder(column: $table.codigo, builder: (column) => column);

  GeneratedColumn<double> get precio =>
      $composableBuilder(column: $table.precio, builder: (column) => column);

  GeneratedColumn<int> get stockActual => $composableBuilder(
    column: $table.stockActual,
    builder: (column) => column,
  );

  GeneratedColumn<int> get stockMinimo => $composableBuilder(
    column: $table.stockMinimo,
    builder: (column) => column,
  );

  Expression<T> repuestosUsadosRefs<T extends Object>(
    Expression<T> Function($$RepuestosUsadosTableAnnotationComposer a) f,
  ) {
    final $$RepuestosUsadosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.repuestosUsados,
      getReferencedColumn: (t) => t.repuestoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RepuestosUsadosTableAnnotationComposer(
            $db: $db,
            $table: $db.repuestosUsados,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RepuestosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RepuestosTable,
          Repuesto,
          $$RepuestosTableFilterComposer,
          $$RepuestosTableOrderingComposer,
          $$RepuestosTableAnnotationComposer,
          $$RepuestosTableCreateCompanionBuilder,
          $$RepuestosTableUpdateCompanionBuilder,
          (Repuesto, $$RepuestosTableReferences),
          Repuesto,
          PrefetchHooks Function({bool repuestosUsadosRefs})
        > {
  $$RepuestosTableTableManager(_$AppDatabase db, $RepuestosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RepuestosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RepuestosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RepuestosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nombre = const Value.absent(),
                Value<String> codigo = const Value.absent(),
                Value<double> precio = const Value.absent(),
                Value<int> stockActual = const Value.absent(),
                Value<int> stockMinimo = const Value.absent(),
              }) => RepuestosCompanion(
                id: id,
                nombre: nombre,
                codigo: codigo,
                precio: precio,
                stockActual: stockActual,
                stockMinimo: stockMinimo,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nombre,
                required String codigo,
                Value<double> precio = const Value.absent(),
                Value<int> stockActual = const Value.absent(),
                Value<int> stockMinimo = const Value.absent(),
              }) => RepuestosCompanion.insert(
                id: id,
                nombre: nombre,
                codigo: codigo,
                precio: precio,
                stockActual: stockActual,
                stockMinimo: stockMinimo,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RepuestosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({repuestosUsadosRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (repuestosUsadosRefs) db.repuestosUsados,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (repuestosUsadosRefs)
                    await $_getPrefetchedData<
                      Repuesto,
                      $RepuestosTable,
                      RepuestosUsado
                    >(
                      currentTable: table,
                      referencedTable: $$RepuestosTableReferences
                          ._repuestosUsadosRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$RepuestosTableReferences(
                            db,
                            table,
                            p0,
                          ).repuestosUsadosRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.repuestoId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$RepuestosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RepuestosTable,
      Repuesto,
      $$RepuestosTableFilterComposer,
      $$RepuestosTableOrderingComposer,
      $$RepuestosTableAnnotationComposer,
      $$RepuestosTableCreateCompanionBuilder,
      $$RepuestosTableUpdateCompanionBuilder,
      (Repuesto, $$RepuestosTableReferences),
      Repuesto,
      PrefetchHooks Function({bool repuestosUsadosRefs})
    >;
typedef $$RepuestosUsadosTableCreateCompanionBuilder =
    RepuestosUsadosCompanion Function({
      Value<int> id,
      required int ordenId,
      required int repuestoId,
      Value<int> cantidad,
    });
typedef $$RepuestosUsadosTableUpdateCompanionBuilder =
    RepuestosUsadosCompanion Function({
      Value<int> id,
      Value<int> ordenId,
      Value<int> repuestoId,
      Value<int> cantidad,
    });

final class $$RepuestosUsadosTableReferences
    extends
        BaseReferences<_$AppDatabase, $RepuestosUsadosTable, RepuestosUsado> {
  $$RepuestosUsadosTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $OrdenesReparacionTable _ordenIdTable(_$AppDatabase db) =>
      db.ordenesReparacion.createAlias(
        $_aliasNameGenerator(
          db.repuestosUsados.ordenId,
          db.ordenesReparacion.id,
        ),
      );

  $$OrdenesReparacionTableProcessedTableManager get ordenId {
    final $_column = $_itemColumn<int>('orden_id')!;

    final manager = $$OrdenesReparacionTableTableManager(
      $_db,
      $_db.ordenesReparacion,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ordenIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RepuestosTable _repuestoIdTable(_$AppDatabase db) =>
      db.repuestos.createAlias(
        $_aliasNameGenerator(db.repuestosUsados.repuestoId, db.repuestos.id),
      );

  $$RepuestosTableProcessedTableManager get repuestoId {
    final $_column = $_itemColumn<int>('repuesto_id')!;

    final manager = $$RepuestosTableTableManager(
      $_db,
      $_db.repuestos,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_repuestoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RepuestosUsadosTableFilterComposer
    extends Composer<_$AppDatabase, $RepuestosUsadosTable> {
  $$RepuestosUsadosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cantidad => $composableBuilder(
    column: $table.cantidad,
    builder: (column) => ColumnFilters(column),
  );

  $$OrdenesReparacionTableFilterComposer get ordenId {
    final $$OrdenesReparacionTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ordenId,
      referencedTable: $db.ordenesReparacion,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrdenesReparacionTableFilterComposer(
            $db: $db,
            $table: $db.ordenesReparacion,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RepuestosTableFilterComposer get repuestoId {
    final $$RepuestosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.repuestoId,
      referencedTable: $db.repuestos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RepuestosTableFilterComposer(
            $db: $db,
            $table: $db.repuestos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RepuestosUsadosTableOrderingComposer
    extends Composer<_$AppDatabase, $RepuestosUsadosTable> {
  $$RepuestosUsadosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cantidad => $composableBuilder(
    column: $table.cantidad,
    builder: (column) => ColumnOrderings(column),
  );

  $$OrdenesReparacionTableOrderingComposer get ordenId {
    final $$OrdenesReparacionTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ordenId,
      referencedTable: $db.ordenesReparacion,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrdenesReparacionTableOrderingComposer(
            $db: $db,
            $table: $db.ordenesReparacion,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RepuestosTableOrderingComposer get repuestoId {
    final $$RepuestosTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.repuestoId,
      referencedTable: $db.repuestos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RepuestosTableOrderingComposer(
            $db: $db,
            $table: $db.repuestos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RepuestosUsadosTableAnnotationComposer
    extends Composer<_$AppDatabase, $RepuestosUsadosTable> {
  $$RepuestosUsadosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get cantidad =>
      $composableBuilder(column: $table.cantidad, builder: (column) => column);

  $$OrdenesReparacionTableAnnotationComposer get ordenId {
    final $$OrdenesReparacionTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.ordenId,
          referencedTable: $db.ordenesReparacion,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$OrdenesReparacionTableAnnotationComposer(
                $db: $db,
                $table: $db.ordenesReparacion,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$RepuestosTableAnnotationComposer get repuestoId {
    final $$RepuestosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.repuestoId,
      referencedTable: $db.repuestos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RepuestosTableAnnotationComposer(
            $db: $db,
            $table: $db.repuestos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RepuestosUsadosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RepuestosUsadosTable,
          RepuestosUsado,
          $$RepuestosUsadosTableFilterComposer,
          $$RepuestosUsadosTableOrderingComposer,
          $$RepuestosUsadosTableAnnotationComposer,
          $$RepuestosUsadosTableCreateCompanionBuilder,
          $$RepuestosUsadosTableUpdateCompanionBuilder,
          (RepuestosUsado, $$RepuestosUsadosTableReferences),
          RepuestosUsado,
          PrefetchHooks Function({bool ordenId, bool repuestoId})
        > {
  $$RepuestosUsadosTableTableManager(
    _$AppDatabase db,
    $RepuestosUsadosTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RepuestosUsadosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RepuestosUsadosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RepuestosUsadosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> ordenId = const Value.absent(),
                Value<int> repuestoId = const Value.absent(),
                Value<int> cantidad = const Value.absent(),
              }) => RepuestosUsadosCompanion(
                id: id,
                ordenId: ordenId,
                repuestoId: repuestoId,
                cantidad: cantidad,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int ordenId,
                required int repuestoId,
                Value<int> cantidad = const Value.absent(),
              }) => RepuestosUsadosCompanion.insert(
                id: id,
                ordenId: ordenId,
                repuestoId: repuestoId,
                cantidad: cantidad,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RepuestosUsadosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({ordenId = false, repuestoId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (ordenId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ordenId,
                                referencedTable:
                                    $$RepuestosUsadosTableReferences
                                        ._ordenIdTable(db),
                                referencedColumn:
                                    $$RepuestosUsadosTableReferences
                                        ._ordenIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (repuestoId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.repuestoId,
                                referencedTable:
                                    $$RepuestosUsadosTableReferences
                                        ._repuestoIdTable(db),
                                referencedColumn:
                                    $$RepuestosUsadosTableReferences
                                        ._repuestoIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RepuestosUsadosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RepuestosUsadosTable,
      RepuestosUsado,
      $$RepuestosUsadosTableFilterComposer,
      $$RepuestosUsadosTableOrderingComposer,
      $$RepuestosUsadosTableAnnotationComposer,
      $$RepuestosUsadosTableCreateCompanionBuilder,
      $$RepuestosUsadosTableUpdateCompanionBuilder,
      (RepuestosUsado, $$RepuestosUsadosTableReferences),
      RepuestosUsado,
      PrefetchHooks Function({bool ordenId, bool repuestoId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TecnicosTableTableManager get tecnicos =>
      $$TecnicosTableTableManager(_db, _db.tecnicos);
  $$ClientesTableTableManager get clientes =>
      $$ClientesTableTableManager(_db, _db.clientes);
  $$EquiposTableTableManager get equipos =>
      $$EquiposTableTableManager(_db, _db.equipos);
  $$OrdenesReparacionTableTableManager get ordenesReparacion =>
      $$OrdenesReparacionTableTableManager(_db, _db.ordenesReparacion);
  $$TrabajosRealizadosTableTableManager get trabajosRealizados =>
      $$TrabajosRealizadosTableTableManager(_db, _db.trabajosRealizados);
  $$RepuestosTableTableManager get repuestos =>
      $$RepuestosTableTableManager(_db, _db.repuestos);
  $$RepuestosUsadosTableTableManager get repuestosUsados =>
      $$RepuestosUsadosTableTableManager(_db, _db.repuestosUsados);
}
