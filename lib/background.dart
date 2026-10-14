import 'package:flutter/material.dart';
import 'generator.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: GeneratorQuotes(),
      ),
    );
  }
}
