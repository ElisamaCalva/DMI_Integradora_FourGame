// Creado por: FourGames
// Asignatura: Desarrollo Movil Integral
// Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart';
import 'package:abyssal_dungeon/home.dart';
import 'package:abyssal_dungeon/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(), // Inicia con la pantalla de splash
  ));

  // Agregar un Future.delayed para esperar un tiempo antes de navegar a la pantalla principal
  Future.delayed(Duration(seconds: 15), () {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(), 
      theme: ThemeData.dark(),// Navega a la pantalla principal después de 25 segundos
    ));
  });
}
