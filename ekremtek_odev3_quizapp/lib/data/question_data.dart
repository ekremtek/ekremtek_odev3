import 'package:ekremtek_odev3_quizapp/models/question.dart';
import 'package:ekremtek_odev3_quizapp/models/quiz_end.dart';
import 'package:flutter/material.dart';

questiondata myquizapp = questiondata();

// ignore: camel_case_types
class questiondata {
  // ignore: non_constant_identifier_names
  int Questionindex = 0;

  List<Question> questions = [
    Question(
        question: "Web tarayıcıları hangi amaçla kullanılır?",
        answer_a: "Sosyal medya takibi",
        answer_b: "E-posta gönderme",
        answer_c: "Web sitelerini görüntüleme",
        answer_d: "Oyun oynama"),
    Question(
        question: "IP adresi nedir?",
        answer_a: "İnternet hızını ölçen bir araç",
        answer_b: "Bir web sitesinin adı",
        answer_c: "Cihazın internete ",
        answer_d: "İnternet tarayıcısının sürümü"),
    Question(
        question: "Hangi protokol e-posta göndermek için kullanılır?",
        answer_a: "HTTP",
        answer_b: "FTP",
        answer_c: "SMTP",
        answer_d: "POP3"),
    Question(
        question: "Hangi cihazlar Wi-Fi ile internete bağlanabilir?",
        answer_a: "Sadece bilgisayarlar",
        answer_b: "Sadece akıllı telefonlar",
        answer_c: "Bilgisayarlar,telefonlar vs.",
        answer_d: "Sadece televizyonlar"),
  ];

  void nextQuestion(context) {
    if (Questionindex < 3) {
      Questionindex++;
    } else if (Questionindex == 3) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const quizend()));
    }
  }

  String ridequestion() {
    return questions[Questionindex].question;
  }

  // ignore: non_constant_identifier_names
  String ridequestion_a() {
    return questions[Questionindex].answer_a;
  }

  // ignore: non_constant_identifier_names
  String ridequestion_b() {
    return questions[Questionindex].answer_b;
  }

  // ignore: non_constant_identifier_names
  String ridequestion_c() {
    return questions[Questionindex].answer_c;
  }

  // ignore: non_constant_identifier_names
  String ridequestion_d() {
    return questions[Questionindex].answer_d;
  }
}
