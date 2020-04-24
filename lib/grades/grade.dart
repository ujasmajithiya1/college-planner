import 'package:flutter/material.dart';
import './user_grade.dart';
class Grade extends StatefulWidget {
  @override
  _GradeState createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: IconButton(
            onPressed:  (){Navigator.pop(context);},
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Grade'),
        ),
        body: UserTransaction(),
      ),
    );
  }
}
