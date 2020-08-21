import 'package:ayuda/models/questions_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/quiz_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => QuestionsProvider(),
      child: MaterialApp(
        title: 'Ayuda',
        theme: ThemeData(
          primarySwatch: Colors.blue,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: QuizScreen(),
      ),
    );
  }
}
