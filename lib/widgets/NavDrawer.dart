import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Usuario",
                style: TextStyle(
                  fontSize: 18,
                ),
                ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                foregroundColor: Color(0xFFC1007E),
                backgroundImage: AssetImage('assets/images/icon_person.png'),
              ), 
            ),
            ListTile(
              leading: Icon(Icons.accessibility, color: Color(0xFFC1007E),),
              title: Text("Calculadora IMC"),
              onTap: (){
                Navigator.pushNamed(context, '/calculator');
              },
            ),
            ListTile(
              leading: Icon(Icons.playlist_add_check, color: Color(0xFFC1007E),),
              title: Text("Lista tarefas"),
              onTap: (){
                Navigator.pushNamed(context, '/todo');
              },
            ),
          ],
        ),
    );
  }
}
