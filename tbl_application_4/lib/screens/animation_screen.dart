import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double largura = 20;
  double altura = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedContainer")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: largura,
              height: altura,
              child: Card(
                color: Colors.black,
              )
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  largura = largura == 20 ? 250 : 20;
                  altura = altura == 20 ? 250 : 20;
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
