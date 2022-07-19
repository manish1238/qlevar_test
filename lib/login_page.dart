import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:untitlednew/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          QR.navigator.replaceLastName(AppRoutes.dashboard);
        },
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
