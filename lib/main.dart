import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'VIewModel/questions_provider.dart';
import 'screens/quiz_screen.dart';

void main() {
  runApp(MyApp());
}

// Not Using Routes Navigation for this App.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => QuestionsProvider(),
      child: MaterialApp(
        title: 'Ayuda',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: QuizScreen(),
      ),
    );
  }
}
