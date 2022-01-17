import 'package:flutter/material.dart';
import 'dart:math';

import 'item_view_class.dart';

String? fio;
String? tel;

class User{
  int id;
  String fio;
  String tel;

  User(this.id, this.fio, this.tel);

  int get userID => id;
  String get userFio => fio;
  String get userTel => tel;

}

final List<User> info = [
  User(0, 'Иванов Иван Иванович', '+7 (111) 111 11 11'),
  User(1, 'Петров Петр Петрович', '+7 (222) 222 22 22'),
  User(2, 'Степанов Степан Степанович', '+7 (333) 333 33 33'),
];

class ListViewClass extends StatefulWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  _ListViewClassState createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      routes: {
        '/itemviewclass': (context) => ItemViewClass(fio: fio , tel: tel,),
      },
    );
  }

}


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView(
            children: info.map<Widget>((inf) {
              return Card(
                child: ListTile(
                  title: Text(inf.fio, style: TextStyle(fontSize: 18, color: Colors.blueGrey),),
                  subtitle: Text(inf.tel, style: TextStyle(fontSize: 14),),
                  onTap: () {
                    fio = inf.fio;
                    tel = inf.tel;
                    Navigator.pushNamed(context, '/itemviewclass');
                  },
                ),
              );
            },).toList(),
          ),
        )
    );
  }

}


