import 'package:uni_questionnaire_self/layout/model/quizmodel.dart';

loadQuestion(int questionIndex) {
  //fragen definieren
  QuizModel model1 = QuizModel("I think my body is unattractive", "Not at all",
      "Slightly", "About Halfway", "Mostly", "Completely");
  QuizModel model2 = QuizModel("I look good in clothes", "Not at all",
      "Slightly", "About Halfway", "Mostly", "Completely");
  QuizModel model3 = QuizModel("My body looks good", "Not at all", "Slightly",
      "About Halfway", "Mostly", "Completely");

  //fragen in liste packen
  List<QuizModel> questionList = [model1, model2, model3];

  return questionList[questionIndex - 1];
}
