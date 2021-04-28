import 'package:flutter/material.dart';
import 'profile.dart';

class profileeditor extends StatefulWidget {
  @override
  _profileeditorState createState() => _profileeditorState();
}

class _profileeditorState extends State<profileeditor> {
  TextEditingController biochanger = new TextEditingController();
  TextEditingController usernamechanger = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: biochanger,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Bio',
                ),
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: usernamechanger,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    biochanger.text = profilescreen.bio;
                    profilescreen.defbio = false;
                    Navigator.pop(context);
                  },
                  child: Container(
                      color: Colors.black, child: Text('Save Changes')))
            ],
          )
        ]),
      )),
      debugShowCheckedModeBanner: false,
    );
  }
}
