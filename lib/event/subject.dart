import 'package:flutter/material.dart';
import './user_event.dart';
class Subject extends StatefulWidget {
  @override
  _SubjectState createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
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
          title: Text('Subject'),
        ),
        body: UserTransaction(),
      ),
    );
  }
}
