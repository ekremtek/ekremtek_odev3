import 'package:ekremtek_odev3_quizapp/data/question_data.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class quizScreen extends StatefulWidget {
  const quizScreen({super.key});

  @override
  State<quizScreen> createState() => _quizScreenState();
}

// ignore: camel_case_types
class _quizScreenState extends State<quizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 7, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 55),
            child: SizedBox(
              height: 200,
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)),
                padding: const EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0),
                  child: Text(
                    myquizapp.ridequestion(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myquizapp.nextQuestion(context);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 50),
                      maximumSize: const Size(300, 70),
                    ),
                    child: Text(
                      myquizapp.ridequestion_a(),
                      style: const TextStyle(fontSize: 20),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myquizapp.nextQuestion(context);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 50),
                        maximumSize: const Size(300, 70),
                      ),
                      child: Text(myquizapp.ridequestion_b(),
                          style: const TextStyle(fontSize: 20))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myquizapp.nextQuestion(context);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 50),
                        maximumSize: const Size(300, 70),
                      ),
                      child: Text(myquizapp.ridequestion_c(),
                          style: const TextStyle(fontSize: 20))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myquizapp.nextQuestion(context);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 50),
                        maximumSize: const Size(300, 70),
                      ),
                      child: Text(myquizapp.ridequestion_d(),
                          style: const TextStyle(fontSize: 20))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
