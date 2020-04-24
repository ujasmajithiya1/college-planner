import 'package:flutter/foundation.dart';

class Transaction{

  final String subject;
  final String teacher;
  final DateTime date;
  final String id;


  Transaction({@required this.date,@required this.id,@required this.teacher,@required this.subject});


}