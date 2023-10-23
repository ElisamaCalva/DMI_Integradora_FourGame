import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/logo.png', // Reemplaza con la ruta de tu imagen
                width: 100, // Ajusta el ancho según tus necesidades
                height: 100, // Ajusta la altura según tus necesidades
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Correo Electrónico',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Agrega aquí la lógica para la recuperación de contraseña
                  },
                  child: Text(
                    'Olvidé Contraseña',
                    style: TextStyle(
                      color: Colors.blue, // Cambia el color del texto a azul u otro color de tu elección
                      decoration: TextDecoration.underline, // Subraya el texto
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Agrega aquí la lógica de autenticación
                  },
                  child: Text('Iniciar Sesión'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  'assets/google.png', // Reemplaza con la ruta de tu imagen
                  width: 50, // Ajusta el ancho del icono
                  height: 50, // Ajusta la altura del icono
                ),
                Image.asset(
                  'assets/twitch.png', // Reemplaza con la ruta de tu imagen
                  width: 50, // Ajusta el ancho del icono
                  height: 50, // Ajusta la altura del icono
                ),
                Image.asset(
                  'assets/facebook.png', // Reemplaza con la ruta de tu imagen
                  width: 50, // Ajusta el ancho del icono
                  height: 50, // Ajusta la altura del icono
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
