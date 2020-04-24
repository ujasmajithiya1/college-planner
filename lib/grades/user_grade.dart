import 'package:flutter/material.dart';
import './new_grade.dart';
import './grade_list.dart';
import '../model/gmodel.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [];

  void _addNewTransaction(String subjectTx,double term1Tx,double term2TX){
    final newTx = Transaction(date: DateTime.now(), id: DateTime.now().toString(), term1: term1Tx,term2: term2TX, subject: subjectTx);
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
