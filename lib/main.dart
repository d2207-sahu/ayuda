import 'package:ayuda/screens/loading_screen.dart';
import 'file:///C:/Users/Arnav/StudioProjects/ayuda/lib/screens/CommonWidgets/question_card.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
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

        ///  Placing Different Screen to make the UI for Now.
        home: HomeScreen(),
      ),
    );
  }
}
