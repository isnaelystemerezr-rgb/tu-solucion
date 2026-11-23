# Tu Solution – Segundo Parcial (Programación para Dispositivos Móviles)

App móvil para Android de un taller de reparación de dispositivos, construida con:

- **Flutter** (framework UI)
- **Drift** (SQLite local, offline-first)
- **Riverpod** (`flutter_riverpod` + `riverpod_generator`) para gestión de estado
- **MVVM** (Model-View-ViewModel)

## Modelo de datos

Tablas (Drift) con relaciones y claves foráneas:

| Tabla | Campos principales |
|-------|--------------------|
| `clientes` | id, nombre, telefono |
| `equipos` | id, tipo, marca, modelo, numero_serie, falla_reportada, cliente_id (FK → clientes) |
| `tecnicos` | id, nombre, especialidad |
| `ordenes` | id, estado, tecnico_id (FK → técnicos), equipo_id (FK → equipos), mano_de_obra, fecha_creacion |
| `repuestos` | id, nombre, codigo, precio, existencias |
| `orden_repuestos` | id, orden_id (FK → ordenes), repuesto_id (FK → repuestos), cantidad |

Estados de orden válidos: `recibida`, `en_reparacion`, `lista`, `entregada`, `cancelada`.

## Reglas de negocio implementadas

- Un técnico puede asignarse ("tomar") una orden.
- Total = mano de obra + Σ(cantidad × precio del repuesto).
- Al usar un repuesto en una orden, las existencias se descuentan automáticamente.
- Alertas visuales cuando stock < 3.
- 3 técnicos predefinidos (seed inicial).
- Historial por número de serie y por teléfono del cliente.

## Estructura de archivos

```
lib/
  main.dart                 # Punto de entrada (ProviderScope)
  app.dart                  # Navegación con go_router
  database.dart             # Base de datos Drift (tablas + DAOs)
  data/daos/                # (DAOs integrados en database.dart)
  models/                   # Modelos de dominio (Cliente, Equipo, Orden, Repuesto, Tecnico, OrdenRepuesto)
  providers/                # ViewModels + providers de Riverpod
    database_provider.dart  # Instancia de AppDatabase (@riverpod)
    cliente_viewmodel.dart
    equipo_viewmodel.dart
    tecnico_viewmodel.dart
    repuesto_viewmodel.dart
    orden_viewmodel.dart    # lógica: estados, stock, mano de obra, total
    dashboard_viewmodel.dart
    providers.dart          # barrel de exportación
  ui/screens/               # Pantallas (Dashboard, Órdenes, Detalle, Inventario, Historial, formularios)
  ui/widgets/               # Componentes reutilizables
```

## Cómo compilar y ejecutar

Requisitos:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado.
- Un emulador Android o dispositivo conectado.

```bash
# 1. Entrar al proyecto
cd tu-solution

# 2. Descargar dependencias
flutter pub get

# 3. Generar el código de Drift y Riverpod (obligatorio antes de correr)
dart run build_runner build --delete-conflicting-outputs

# 4. Ejecutar en Android
flutter run
```

Si no tienes un dispositivo, lista los disponibles con:

```bash
flutter devices
```

## Pantallas incluidas

1. **Dashboard** – resumen de órdenes abiertas por estado y carga de trabajo por técnico.
2. **Órdenes** – lista con filtros por estado, detalle de cada orden.
3. **Detalle de orden** – cambiar estado, asignar técnico, añadir mano de obra, añadir/quitar repuestos (descuenta stock) y ver el total.
4. **Inventario** – CRUD de repuestos con alertas de stock bajo.
5. **Historial** – buscar reparaciones por número de serie o por teléfono de cliente.
6. **Formularios** – crear clientes, equipos y órdenes.

## Notas

- No hay autenticación (uso interno exclusivo para técnicos).
- La base de datos es local (SQLite en documentos de la app), funciona sin conexión.
- Ejecutá `dart run build_runner build` tras modificar `database.dart` o agregar `@riverpod`.
