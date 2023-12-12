import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:uni_questionnaire_self/layout/model/quizmodel.dart';
import 'package:uni_questionnaire_self/logic/questions.dart';
import 'package:uni_questionnaire_self/layout/layout/widgets.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentLevel = 1;
  late QuizModel currentQuestion;

  @override
  void initState() {
    super.initState();
    // Initialisieren Sie die erste Frage beim Start der Seite.
    loadNewQuestion();
  }

  loadNewQuestion() {
    setState(() {
      currentQuestion = loadQuestion(currentLevel);
      currentLevel++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 103, 142),
        appBar: customAppBar("Questions"),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  currentQuestion.question,
                  style: headerStyle(),
                ),
                Spacer(),
                Text(
                  "Aktuelles Level:",
                  style: normalTextStyle(),
                ),
                StepProgressIndicator(
                  totalSteps: 5,
                  currentStep: currentLevel,
                  size: 8,
                  padding: 0,
                  selectedColor: Colors.yellow,
                  unselectedColor: Colors.cyan,
                  roundedEdges: Radius.circular(10),
                  selectedGradientColor: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.green, Colors.green],
                  ),
                  unselectedGradientColor: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.redAccent, Colors.red],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  child: answerCard(loadQuestion(1).answer_a, context),
                  onTap: () {
                    loadNewQuestion();
                  },
                ),
                GestureDetector(
                  child: answerCard(loadQuestion(1).answer_b, context),
                  onTap: () {
                    loadNewQuestion();
                  },
                ),
                GestureDetector(
                  child: answerCard(loadQuestion(1).answer_c, context),
                  onTap: () {
                    loadNewQuestion();
                  },
                ),
                GestureDetector(
                  child: answerCard(loadQuestion(1).answer_d, context),
                  onTap: () {
                    loadNewQuestion();
                  },
                ),
                GestureDetector(
                  child: answerCard(loadQuestion(1).answer_e, context),
                  onTap: () {
                    loadNewQuestion();
                  },
                ),
                Spacer(),
              ],
            ),
          ),
        ));
  }
}
