import 'Utils/Colors.dart';
import 'screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'VIewModel/questions_provider.dart';

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
          highlightColor: contrastColor,
          primaryColor: contrastColor,
          accentColor: lightColor,
        ),

        ///  Placing Different Screen to make the UI for Now.
        home: HomeScreen(),
      ),
    );
  }
}
