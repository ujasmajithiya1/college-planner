import 'package:flutter/material.dart';
import 'package:newapp/grades/grade.dart';
import './timetable.dart';
import './calendar.dart';
import './event/subject.dart';
class OverView extends StatefulWidget {
  @override
  _OverViewState createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Column(
        children: <Widget>[
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
                  child: Wrap(
                    spacing: 18,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 110,
                        child: RaisedButton(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                          color: Colors.red,
                          onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>TimeTable()));
                      },
                          child: Text(
                            'TIMETABLE',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                     
                      Container(
                        height: 40,
                        width: 110,
                        child: RaisedButton(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                          color: Colors.lightGreen,
                          onPressed:  () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Calendar()));
                      },
                          child: Text(
                            'CALENDAR',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 110,
                        child: RaisedButton(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                          color: Colors.teal,
                          onPressed:  () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Subject()));
                      },
                          child: Text(
                            'SUBJECTS',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
  Container(
    width: 250,
    height: 90,
    
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.pink,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album, size: 70),
            title: Text('Cognizance', style: TextStyle(color: Colors.white)),
          ),
          
        ],
      ),
    ),
  ),
  Container(
    width: 250,
    height: 90,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.pink,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album, size: 70),
            title: Text('Spoural', style: TextStyle(color: Colors.white)),
          ),
          
        ],
      ),
    ),
  ),
        ],
       
    ));
  }
}
