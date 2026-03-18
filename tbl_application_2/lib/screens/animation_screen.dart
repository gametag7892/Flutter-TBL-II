import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double altura = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedContainer")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: altura,
              height: altura,
              child: Icon(Icons.star, color: Colors.orange, size: altura * 0.6),
            ),

            ElevatedButton(
              onPressed: () async {
                setState(() {
                  altura = 200.0;
                });

                // Aguarda o tempo da animação (500ms)
                await Future.delayed(const Duration(milliseconds: 500));

                // Passo B: Volta ao tamanho original
                setState(() {
                  altura = 100.0;
                });
              },

              child: const Text("Animar"),
            ),
          ],
        ),
      ),
    );
  }
}
