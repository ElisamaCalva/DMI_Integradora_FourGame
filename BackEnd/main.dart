dart
import 'package:flutter/material.dart';

class ContadorWidget extends StatefulWidget {
  @override
  _ContadorWidgetState createState() => _ContadorWidgetState();
}

class _ContadorWidgetState extends State<ContadorWidget> {
  int contador = 0;

  void incrementarContador() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Contador: $contador'),
        ElevatedButton(
          onPressed: incrementarContador,
          child: Text('Incrementar'),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ejemplo StatefulWidget')),
        body: Center(
          child: ContadorWidget(),
        ),
      ),
    ),
  );
}