import 'package:flutter/material.dart';

class Question {
  @required
  final int questionId;
  @required
  final String questionTitle;
  @required
  final List<String> options;
  @required
  final String correctOption;

  Question(
      {this.questionId, this.questionTitle, this.options, this.correctOption});
}
