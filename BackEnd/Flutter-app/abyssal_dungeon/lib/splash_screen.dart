import 'package:flutter/material.dart';
import 'package:abyssal_dungeon/home.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progress = 0.0;
  bool _isLoading = true;

  void _simulateLoading() {
    const totalDuration = Duration(seconds: 10);
    const intervalDuration = Duration(milliseconds: 100);

    Timer.periodic(intervalDuration, (timer) {
      if (_progress >= 1.0) {
        timer.cancel();
        Future.delayed(Duration(seconds: 1), () {
          if (mounted) {
            setState(() {
              _isLoading = false;
            });
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => Home(),
              ),
            );
          }
        });
      } else {
        if (mounted) {
          setState(() {
            _progress += 0.01;
          });
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash"),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/elden.png', // Reemplaza con la ruta de tu imagen
                width: 450,
                height: 450,
              ),
               SizedBox(height: 10),
              Text(
                "Dungeon Abyssal", // Texto debajo de la imagen
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'si',
                   color: Colors.white, // Cambia el color del texto a blanco
                ),
              ),
              SizedBox(height: 10),
              Text(
                _isLoading ? "Cargando..." : "Carga completada",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'si',
                ),
              ),
              SizedBox(height: 20),
              if (_isLoading)
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                      child: LinearProgressIndicator(
                        value: _progress,
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF9E1055)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                   Text(
                    "${(_progress * 100).toInt()}%",
                      style: TextStyle(
                     color: Color(0xFF9E1055), // Aquí estableces el color deseado
                     fontSize: 24,
                     ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
