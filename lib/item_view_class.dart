import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemViewClass extends StatelessWidget {
  var fio;
  var tel;

  ItemViewClass({Key? key, @required this.fio, @required this.tel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Text(fio, style: TextStyle(fontSize: 18, color: Colors.blueGrey)),
            ),
            SizedBox(
              height: 100,
              child: Text(tel, style: TextStyle(fontSize: 14)),
            ),
            SizedBox(
              child: ElevatedButton(
                child: Text('Назад'),
                onPressed: () {Navigator.pop(context);},
              ),
            )
          ],
        ),
      ),
    );
  }
}
