import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(questionText: 'You can lead a cow down stairs but not up stairs.', questionAnswer: false),
    Question(questionText: 'Approximately one quarter of human bones are in the feet.', questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(questionText: 'The capital of Australia is Sydney.', questionAnswer: false),
    Question(questionText: 'There are 365 days in a year.', questionAnswer: true),
    Question(questionText: 'Water boils at 90 degrees Celsius.', questionAnswer: false),
    Question(questionText: 'The human heart has four chambers.', questionAnswer: true),
    Question(questionText: 'Lightning never strikes the same place twice.', questionAnswer: false),
    Question(questionText: 'The tallest building in the world is located in Dubai.', questionAnswer: true),
    Question(questionText: 'The Great Wall of China is visible from space.', questionAnswer: false),
    Question(questionText: 'The sun is a star.', questionAnswer: true),
    Question(questionText: 'The Amazon River is the longest river in the world.', questionAnswer: false),
    Question(questionText: 'Mount Everest is the highest mountain in the world.', questionAnswer: true),
    Question(questionText: 'Venus is the closest planet to the sun.', questionAnswer: false),
    Question(questionText: 'An octopus has three hearts.', questionAnswer: true),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

   isFinished(){
    if( _questionNumber >= _questionBank.length -1){
      return true;
    }else{
      return false;
    }
  }

  reset(){
    return _questionNumber = 0;
  }

}
