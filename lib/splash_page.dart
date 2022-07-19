import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:untitlednew/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      QR.navigator.replaceLastName(AppRoutes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('I am splash, wait for sometime to auto redirect'),
    );
  }
}
