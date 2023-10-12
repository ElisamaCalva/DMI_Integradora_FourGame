// Creado por: FourGames
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextStyle customTextStyle = TextStyle(
    fontFamily: 'si',
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abyssal Dungeon"),
        titleTextStyle: TextStyle(fontFamily: 'si'),
        backgroundColor: Colors.blue, // Cambia aquí el color de fondo de la AppBar
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white, // Cambia aquí el color de los iconos en la AppBar
            ),
            onPressed: () {
              // Aquí puedes agregar la funcionalidad de búsqueda
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue, // Cambia aquí el color de fondo del Drawer
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Material()),

            ListTile(
              title: Text(
                "Mi Perfil",
                style: TextStyle(fontFamily: 'si'),
              ),
              trailing: Icon(Icons.emoji_events),
            ),

            Divider(
              height: 5.0,
            ),

            ListTile(
              title: Text(
                "Acerca de",
                style: TextStyle(fontFamily: 'si'),
              ),
              trailing: Icon(Icons.speaker_notes),
            ),

            Divider(
              height: 5.0,
            ),

            ListTile(
              title: Text(
                "Cerrar",
                style: TextStyle(fontFamily: 'si'),
              ),
              trailing: Icon(Icons.west),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Cambia aquí el color de fondo de la barra inferior
        items: _obtenerIconos(),
      ),
    );
  }
List<BottomNavigationBarItem> _obtenerIconos() {
  return [
    BottomNavigationBarItem(
      icon: Icon(Icons.emoji_events_outlined),
      label: "Top",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.military_tech_outlined),
      label: "Mi Puntaje",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.auto_stories),
      label: "Historia",
    ),
  ];
}

}
