import 'package:flutter/material.dart';
import '../model/gmodel.dart';

class GradeList extends StatelessWidget {

  final List<Transaction> transaction;
  GradeList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transaction.map((tx) {
        return SingleChildScrollView( scrollDirection: Axis.vertical,
                  child: Card(
            elevation: 5,
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      tx.subject,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Text('First Internal',
                          style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                       // Spacer(),
                        Text('Second Internal',
                        style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right:150),
                          child: Text(
                      tx.term1.toString(),
                      style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w100),
                      ),
                        ),
                     // Spacer(),
                    Text(
                      tx.term1.toString(),
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w100),
                    ) 
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }).toList(),
    ) ;
  }
}
