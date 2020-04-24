import 'package:flutter/material.dart';
import './new_event.dart';
import './event_list.dart';
import '../model/smodel.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [];

  void _addNewTransaction(String subjectTx,String teacherTx){
    final newTx = Transaction(date: DateTime.now(), id: DateTime.now().toString(), teacher: teacherTx, subject: subjectTx);
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction),GradeList(_userTransaction)],
    );
  }
}
