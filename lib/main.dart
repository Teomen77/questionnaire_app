import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:uni_questionnaire_self/layout/layout/quizpage.dart';
import 'package:uni_questionnaire_self/layout/layout/widgets.dart';

void main() {
  runApp(const StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        appBar: customAppBar("Startseite"),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "Willkommen im Questionnaire",
              style: headerStyle(),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizPage()));
                },
                child: Text("Quiz starten")),
            Spacer(),
          ],
        )));
  }
}
