import 'package:go_router/go_router.dart';

import '../views/homepage.dart';
import '../views/dashboard_page.dart';
import '../views/clientes_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardPage(),
    ),
    GoRoute(
      path: '/clientes',
      builder: (context, state) => const ClientesPage(),
    ),
  ],
);
