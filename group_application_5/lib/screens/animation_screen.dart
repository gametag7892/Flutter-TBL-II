import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double largura = 100;
  double altura = 100;
  var cor = Colors.blue;

  double opacidade = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedContainer && Opacity")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: largura,
              height: altura,
              color: cor,
              child: SizedBox(
                height: 20,
                child: Center(
                  child: AnimatedOpacity(
                    opacity: opacidade,
                    duration: const Duration(seconds: 1),
                    child: const Text("OIEEEEE!"),
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  largura = largura == 100 ? 250 : 100;
                  altura = altura == 100 ? 250 : 100;
                  opacidade = opacidade == 0 ? 1 : 0;
                  cor = cor == Colors.blue ? Colors.red : Colors.blue;
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
