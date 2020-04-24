import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final subjectController = TextEditingController();
  final teacherController = TextEditingController();

  NewTransaction(this.addTx);

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
              decoration: InputDecoration(labelText: 'Teacher'),
              controller: teacherController,
            ),
            FlatButton(
              onPressed: (){
                addTx(
                  subjectController.text,
                  teacherController.text
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
