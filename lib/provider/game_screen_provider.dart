import 'package:flutter/material.dart';

class GameScreenProvider extends ChangeNotifier {
  List<TextEditingController> answerController =
      List.generate(10, (index) => TextEditingController());
  GlobalKey<FormState> formKeyTask = GlobalKey<FormState>();
  String currentQuestion = 'asdfq';
  late List<String> question = currentQuestion.split('');
  String answer = '';
  List<Color> questionsColors = List.generate(10, (index) => Colors.grey);

  void answerCheck(String question) {
    answer = answerController[0].text +
        answerController[1].text +
        answerController[2].text +
        answerController[3].text +
        answerController[4].text +
        answerController[5].text +
        answerController[6].text +
        answerController[7].text +
        answerController[8].text +
        answerController[9].text.toString();
    if (answer.trim() != question) {
      print(false);
      answerRedCheck();
      answerYellowCheck();
      answerGreenCheck();
    }
    answerGreenCheck();
  }

  void answerGreenCheck() {
    for (int i = 0; i < answer.length; i++) {
      if (answerController[i].text == question[i]) {
        questionsColors[i] = Colors.green;
      }
    }
    notifyListeners();
  }

  void answerYellowCheck() {
    for (int i = 0; i < answer.length; i++) {
      for (int j = 0; j < question.length; j++) {
        if (answer[i] == question[j]) {
          questionsColors[i] = Colors.yellow;
        }
      }
    }
    notifyListeners();
  }

  void answerRedCheck() {
    for (int i = 0; i < answer.length; i++) {
      for (int j = 0; j < question.length; j++) {
        if (answer[i] != question[j]) {
          questionsColors[i] = Colors.red;
        }
      }
    }
    notifyListeners();
  }
}
