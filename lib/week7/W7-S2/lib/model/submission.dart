import 'package:flutter_workspace/week7/W7-S2/lib/model/quiz.dart';

class Answer {
  Question question;
  String questionAnswer;
  Answer({required this.questionAnswer, required this.question});

  //check if the asnwer is correct
  bool isCorrect() {
    if (questionAnswer == question.goodAnswer) {
      return true;
    } else {
      return false;
    }
  }
}

class Submission {
  final Map<Question, Answer> answers = {};
  //List<Question> answers = [];

  //get score
  int getScore() {
    return answers.values.where((answer) => answer.isCorrect()).length;
  }

  //get answer for
  Answer? getAnswerFor(Question question) {
    return answers[question];
  }

  //add Answer
  void addAnswer(Question question, String answer) {
    answers[question] = Answer(questionAnswer: answer, question: question);
  }

  //remove answer
  void removeAnswer() {
    answers.clear();
  }
}

extension on List<Question> {
  get values => null;
}
