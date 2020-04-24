import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final subjectController = TextEditingController();
  final term1Controller = TextEditingController();
  final term2Controller = TextEditingController();

  NewTransaction(this.addTx);
   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Subject'),
              controller: subjectController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'First Internal'),
              controller: term1Controller,
              keyboardType: TextInputType.number
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Second Internal'),
              controller: term2Controller,
              keyboardType: TextInputType.number
            ),
            FlatButton(
              onPressed: (){
                addTx(
                  subjectController.text,
                  double.parse(term1Controller.text),
                  double.parse(term2Controller.text)
                );
              },
              child: Text('Add'),
              textColor: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
