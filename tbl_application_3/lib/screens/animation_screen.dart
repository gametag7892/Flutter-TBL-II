import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<AnimationScreen> {
  double opacidade = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedOpacity")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: opacidade,
              child: const Text("OIEEEEE!"),
            ),

            ElevatedButton(
              onPressed: () async {
                setState(() {
                  opacidade = opacidade == 1 ? 0 : 1;
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
