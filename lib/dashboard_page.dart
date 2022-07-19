import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:untitlednew/routes.dart';

class DashboardPage extends StatelessWidget {
  final QRouter router;
  const DashboardPage(this.router, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: router,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'First',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Second',
          ),
        ],
        currentIndex:
            AppRoutes.tabs.indexWhere((element) => element == router.routeName),
        onTap: (v) => QR.toName(AppRoutes.tabs[v]),
      ),
    );
  }
}
