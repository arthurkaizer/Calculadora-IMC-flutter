import 'package:calculadora_imc/pages/calculator/calculator_page.dart';
import 'package:calculadora_imc/pages/login/login_page.dart';
import 'package:calculadora_imc/pages/todolist/todolist_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camp',
      theme: ThemeData(
        primaryColor: Color(0xFFC1007E),
        toggleableActiveColor: Color(0xFFC1007E),
        fontFamily: 'Poppins',
        iconTheme: IconThemeData(color: Color(0xFFC1007E)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(title: 'Login'),
        '/calculator': (context) => CalculatorPage(title: 'Calculator'),
        '/todo': (context) => TodoListPage(title: 'Todo'),
      },
    );
  }
}
