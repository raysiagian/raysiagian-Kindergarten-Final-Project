import 'package:flutter/material.dart';
import 'dart:math';

class KinestetikScreen2 extends StatefulWidget {
  const KinestetikScreen2({super.key});

  @override
  State<KinestetikScreen2> createState() => _KinestetikScreen2State();
}

class _KinestetikScreen2State extends State<KinestetikScreen2>
    with SingleTickerProviderStateMixin {
  final Random random = Random();
  double targetX = 0.0;
  double targetY = 0.0;
  int score = 0;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  Color targetColor = Colors.red;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _moveTarget();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _moveTarget() {
    setState(() {
      double maxX = MediaQuery.of(context).size.width - 50;
      double maxY = MediaQuery.of(context).size.height - 150;

      targetX = random.nextDouble() * maxX;
      targetY = random.nextDouble() * maxY;

      targetX = targetX.clamp(0, maxX);
      targetY = targetY.clamp(0, maxY);

      targetColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tangkap Bola dengan Warna Dinamis!'),
      ),
      body: Stack(
        children: [
          Positioned(
            left: targetX,
            top: targetY,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    score++;
                    _moveTarget();
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: targetColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              'Skor: $score',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
