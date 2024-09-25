import 'package:flutter/material.dart';
import 'boton.dart'; // Asegúrate de importar el Boton

class GrupoBotones extends StatelessWidget {
  final VoidCallback incrementar;
  final VoidCallback decrementar;
  final VoidCallback reiniciar;

  const GrupoBotones({
    Key? key,
    required this.incrementar,
    required this.decrementar,
    required this.reiniciar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Boton(
          onPressed: incrementar,
          icono: Icons.plus_one,
        ),
        const SizedBox(height: 18),
        Boton(
          onPressed: decrementar,
          icono: Icons.exposure_minus_1,
        ),
        const SizedBox(height: 18),
        Boton(
          onPressed: reiniciar,
          icono: Icons.refresh_rounded,
        ),
      ],
    );
  }
}
