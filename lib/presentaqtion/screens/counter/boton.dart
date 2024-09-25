import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icono;
  final bool esBotonFloating;

  const Boton({
    super.key,
    required this.onPressed,
    required this.icono,
    this.esBotonFloating = true,
  });

  @override
  Widget build(BuildContext context) {
    return esBotonFloating
        ? Column(
            children: [
              FloatingActionButton(
                onPressed: onPressed,
                child: Icon(icono),
              ),
              const SizedBox(height: 18),
            ],
          )
        : IconButton(
            onPressed: onPressed,
            icon: Icon(icono),
          );
  }
}
