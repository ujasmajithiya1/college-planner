import 'package:flutter/material.dart';
import './event/subject.dart';
import 'dart:io';
import './grades/grade.dart';
import './timetable.dart';
import './calendar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';


class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  File _storageImage;
  String a="Add Name";

  Future<void> _takePicture() async {
    final _imageFile = await ImagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 70,
      maxWidth: 60,

    );
    setState(() {
      _storageImage = _imageFile;
    });

//    final appDir = await syspaths.getApplicationDocumentsDirectory();
//    final fileName = path.basename(_imageFile.path);
//    final savedImage = await _imageFile.copy('${appDir.path}/$fileName');
  }

  Future<String> createAlertDialog(BuildContext context){

    TextEditingController MyController = TextEditingController();

    return showDialog(context: context,builder: (context){
      return AlertDialog(
        title: Text("Your Name"),
        content: TextField(
          controller: MyController,
            decoration:InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Name",
            ),
        ),
        actions: <Widget>[
          MaterialButton(
            onPressed: (){
              Navigator.of(context).pop(MyController.text.toString());
            },
            elevation: 5.0,
            child: Text(
              "Submit",
            ),
          )
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _storageImage != null
                              ? Image.file(
                                  _storageImage,
                                  cacheWidth: 60,
                                  cacheHeight: 70,
                                )
                              : MaterialButton(
                                  onPressed: _takePicture,
                                  elevation: 5.0,
                                  color: Color.fromRGBO(62, 81, 183, 1),
                                  textColor: Colors.white,
                                  child: Icon(
                                    Icons.camera_alt,
                                    size: 24,
                                  ),
                                  padding: EdgeInsets.all(20),
                                  shape: CircleBorder(),
                                ),
                          Container(
                            width: 160,
                            height: 50,
                            margin: EdgeInsets.only(left: 20.0),
                            child: FlatButton(
                              onPressed: () {
                                createAlertDialog(context).then((onValue){
                                  if(onValue==null){
                                    a="Add Name";
                                  }
                                  else{
                                    setState(() {
                                      a=onValue;
                                    });
                                  }
                                });
                              },
                              color: Color.fromRGBO(62, 81, 183, 1),
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              splashColor: Colors.blueAccent,
                              child: Text(
                                "$a",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15.0,

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(62, 81, 183, 1),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 12),
                child: ListTile(
                  title: Text(
                    'Overview',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {},
                  leading: Icon(Icons.home),
                ),
              ),
              Container(
                height: 47,
                margin: EdgeInsets.only(bottom: 12),
                width: double.infinity,
                child: ListTile(
                  title: Text(
                    'Calendar',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Calendar()));
                  },
                  leading: Icon(Icons.calendar_today),
                ),
              ),
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => TimeTable()));
                  },
                  title: Text(
                    'Timetable',
                    style: TextStyle(fontSize: 17),
                  ),
                  leading: Icon(Icons.border_all),
                ),
              ),
              Container(
                child: Divider(
                  color: Colors.teal,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  title: Text(
                    'Grades',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Grade()));
                  },
                  leading: Icon(Icons.equalizer),
                ),
              ),
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  title: Text(
                    'Subjects',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Subject()));
                  },
                  leading: Icon(Icons.library_books),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
