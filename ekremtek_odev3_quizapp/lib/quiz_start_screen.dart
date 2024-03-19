import 'package:ekremtek_odev3_quizapp/quizscreen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class quizStartScreen extends StatefulWidget {
  const quizStartScreen({super.key});

  @override
  State<quizStartScreen> createState() => _quizStartScreenState();
}

// ignore: camel_case_types
class _quizStartScreenState extends State<quizStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 7, 255),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const quizScreen()));
            },
            child: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 30),
            )),
      ),
    );
  }
}
