import 'package:flutter/material.dart';
import 'package:primer_app_2024_2/presentaqtion/screens/counter/grupo_botones.dart';
import 'boton.dart';
import 'contador.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  void incrementarContador() {
    setState(() {
      clickCounter += 1;
    });
  }

  void decrementarContador() {
    setState(() {
      clickCounter > 0 ? clickCounter-- : 0;
    });
  }

  void reiniciarContador() {
    setState(() {
      clickCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Pantalla Contador"),
          leading: Boton(
            onPressed: reiniciarContador,
            icono: Icons.refresh_rounded,
            esBotonFloating: false,
          )),
      body: Center(
        child: Contador(
          clickCounter: clickCounter,
        ),
      ),
      floatingActionButton: GrupoBotones(
        incrementar: incrementarContador,
        decrementar: decrementarContador,
        reiniciar: reiniciarContador,
      ),
    );
  }
}
