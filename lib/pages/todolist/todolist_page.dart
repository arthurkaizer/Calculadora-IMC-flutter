import 'package:calculadora_imc/widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo_home_1.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: EdgeInsets.only(left: 25),
              child: Text(
                'Lista tarefas',
                style: TextStyle(
                  fontSize: 14,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
