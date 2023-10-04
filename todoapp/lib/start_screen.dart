import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(128, 234, 235, 235),
          ),
          const SizedBox(height: 80),
          Text(
            'I want to develop the thrifting app',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 170, 150, 200),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 253, 253, 253)),
            icon: const Icon(Icons.add_circle_outline_outlined),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
