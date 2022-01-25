import 'package:flutter/material.dart';

import 'widgets/CustomTextFieldWidget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 76)),
            Image.asset(
              'assets/images/logo_ioasys_1.png',
              alignment: Alignment.topCenter,
            ),
            Padding(padding: EdgeInsets.only(bottom: 129)),
            Container(
              width: 300,
              child: Text(
                "Seja bem vindo!",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 31.0,
                ),
              ),
            ),
            Container(
              width: 300,
              child: Text(
                "Calculadora IMC",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 43)),
            CustomTextFieldWidget(hintText: 'Usuario',),
            SizedBox(
              height: 20,
            ),
            CustomTextFieldWidget(hintText: 'Senha',obscureText: true,),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                child: const Text('ENTRAR'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/calculator');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
