import 'package:abyssal_dungeon/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:abyssal_dungeon/components/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenAndLogin(), // Inicia con la pantalla de bienvenida y luego la de inicio de sesión
    );
  }
}

class SplashScreenAndLogin extends StatefulWidget {
  @override
  _SplashScreenAndLoginState createState() => _SplashScreenAndLoginState();
}

class _SplashScreenAndLoginState extends State<SplashScreenAndLogin> {
  bool _showLoginPage = false;

  @override
  void initState() {
    super.initState();

    // Muestra la pantalla de bienvenida durante 15 segundos
    Future.delayed(Duration(seconds: 12), () {
      setState(() {
        _showLoginPage = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showLoginPage ? LoginPage() : SplashScreen();
  }
}
