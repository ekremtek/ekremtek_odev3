import 'package:flutter/material.dart';

// ignore: camel_case_types
class quizend extends StatefulWidget {
  const quizend({super.key});

  @override
  State<quizend> createState() => _quizendState();
}

// ignore: camel_case_types
class _quizendState extends State<quizend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 255, 52),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: const Center(
            child: Text(
              "Bitti",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
