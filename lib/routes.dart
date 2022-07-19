import 'package:qlevar_router/qlevar_router.dart';
import 'package:untitlednew/first_page.dart';
import 'package:untitlednew/login_page.dart';
import 'package:untitlednew/second_page.dart';
import 'package:untitlednew/splash_page.dart';

import '/dashboard_page.dart';

class AppRoutes {
  static const String root = 'root';
  static const String login = 'login';
  static const String dashboard = 'dashboard';
  static const tabs = [
    'first',
    'second',
  ];

  final routes = <QRoute>[
    QRoute(
      path: '/',
      name: root,
      builder: () => const SplashPage(),
    ),
    QRoute(
      path: '/login',
      name: login,
      builder: () => const LoginPage(),
    ),
    QRoute.withChild(
      path: '/dashboard',
      name: dashboard,
      initRoute: '/first',
      builderChild: (router) => DashboardPage(router),
      children: [
        QRoute(
          path: '/first',
          name: tabs[0],
          builder: () => const FirstPage(),
        ),
        QRoute(
          path: '/second',
          name: tabs[1],
          builder: () => const SecondPage(),
        ),
      ],
    ),
  ];
}
