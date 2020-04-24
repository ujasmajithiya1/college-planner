import 'package:flutter/foundation.dart';

class Transaction{

  final String subject;
  final double term1;
  final double term2;
  final DateTime date;
  final String id;


  Transaction({@required this.date,@required this.id,@required this.term1,@required this.term2,@required this.subject});


}