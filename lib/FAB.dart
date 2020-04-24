import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:newapp/event/subject.dart';
import 'package:newapp/grades/grade.dart';

class FabActivity extends StatefulWidget {
  @override
  _FabActivityState createState() => _FabActivityState();
}

class _FabActivityState extends State<FabActivity>
    {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      marginRight: 18,
      marginBottom: 20,

      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 20),

      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      tooltip: 'Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 8.0,
      shape: CircleBorder(),
      children: [
        SpeedDialChild(
            child: Icon(Icons.equalizer),
            backgroundColor: Colors.red,
            label: 'Grade',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap:  () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Grade()));
                  }
        ),
        SpeedDialChild(
          child: Icon(Icons.import_contacts),
          backgroundColor: Colors.blue,
          label: 'Subject',
          onTap:  () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Subject()));
                  },
          labelStyle: TextStyle(fontSize: 18.0),
        ),
        
      ],
    );
  }
}
