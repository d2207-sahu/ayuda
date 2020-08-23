import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionsProvider with ChangeNotifier {
  int _currentQuestionIndex = 0;

  List<Question> _questionsBank = [
    Question(
        questionId: 1,
        questionTitle: 'What is the capital of India',
        options: ['Delhi', 'Mumbai', 'Kolkata'],
        correctOption: 'Delhi'),
    Question(
        questionId: 2,
        questionTitle: 'What is the capital of Chhattisgarh',
        options: ['Raigarh', 'Bilaspur', 'Raipur'],
        correctOption: 'Raipur'),
    Question(
        questionId: 3,
        questionTitle: 'What is the antonym for Good',
        options: ['Very Good', 'Bad', 'Shit'],
        correctOption: 'Good'),
    Question(
        questionId: 4,
        questionTitle: 'What is the value of 23^2',
        options: ['529', '789', '549'],
        correctOption: '529'),
    Question(
        questionId: 5,
        questionTitle: 'Which one is Central India largest Techfest',
        options: ['Samar', 'E-Summit', 'Aavartan'],
        correctOption: 'Aavartan'),
  ];

  List<Question> get questionsList {
    return [..._questionsBank];
  }

  Question get theQuestion {
    if (_currentQuestionIndex + 1 > _questionsBank.length) {
      return null;
    } else
      return questionsList[_currentQuestionIndex];
  }

  void updateQuestion() {
    _currentQuestionIndex = _currentQuestionIndex + 1;
    notifyListeners();
  }
}
