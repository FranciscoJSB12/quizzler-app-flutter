import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quater of human bones are in the feet.', true),
    Question('A slug\'s blood is green', true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].text;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].answer;
  }

  bool isFinished(int scoreCount) {
    return scoreCount == _questions.length ? true : false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
