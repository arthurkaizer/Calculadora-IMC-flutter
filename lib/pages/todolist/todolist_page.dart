import 'package:calculadora_imc/widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  TextEditingController textController = TextEditingController();

  List<TaskModel> todoList = [
    TaskModel(description: "Assistir aula gravada modulo 5"),
    TaskModel(description: "Palestra Como entrar em Big Techs")
  ];

  void addTodo() {
    var newTask = TaskModel(description: textController.text);
    todoList.add(newTask);
    textController.text = "";
  }

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
                )),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(22, 24, 34, 41),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    controller: textController,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      labelText: 'Nova tarefa',
                    ),
                  ),
                ),
                SizedBox(
                  width: 19,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      addTodo();
                    });
                  },
                  child: Text(
                    'ADD',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    elevation: 5,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (_, index) {
                  var task = todoList[index];
                  return CheckboxListTile(
                    value: task.completed,
                    onChanged: (value) {
                      setState(() {
                        task.completed = value ?? false;
                      });
                    },
                    title: Text(
                      task.description,
                      style: TextStyle(
                        color: Color(0xFF767676),
                        fontSize: 14,
                        decoration: task.completed
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    secondary: Icon(
                      task.completed ? Icons.check_circle : Icons.error,
                      color: Color(0xFFC1007E),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class TaskModel {
  bool completed;
  String description;

  TaskModel({this.completed = false, required this.description});
}
