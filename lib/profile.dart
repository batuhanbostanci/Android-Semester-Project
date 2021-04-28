import 'package:flutter/material.dart';
import 'profileeditor.dart';

class profilescreen extends StatefulWidget {
  static String bio;
  static bool defbio = true;
  @override
  _profilescreenState createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  static int favbooknum = 0;
  static int favfilmnum = 0;
  static String username;

  @override
  Widget build(BuildContext context) {
    if (profilescreen.defbio == true) {
      profilescreen.bio = 'Put your bio here.';
    } else {
      profilescreen.bio = '-'; //get this from cloud data
    }
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Title(
                  color: Color.fromRGBO(100, 50, 50, 1),
                  child: Text(
                    '-insert user name here-',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                  ))),
          body: Column(children: [
            Row(
              children: [
                Flexible(
                  child: Container(
                    child: Image.network('https://placekitten.com/g/200/200'),
                  ),
                ),
                Flexible(
                    child: Container(
                        child: Title(
                            color: Color.fromRGBO(100, 50, 50, 1),
                            child: Text(
                              '''
                              Favorited Books
                              $favbooknum
                              ''',
                              style: TextStyle(
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                              ),
                            )))),
                Flexible(
                    child: Container(
                  child: Title(
                      color: Color.fromRGBO(100, 50, 50, 1),
                      child: Text(
                        '''
                             Favorited Films
                              $favfilmnum
                              ''',
                        style: TextStyle(
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                        ),
                      )),
                )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: Container(
                  padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                  child: Title(
                    color: Color.fromRGBO(100, 50, 50, 1),
                    child: Text(profilescreen.bio),
                  ),
                ))
              ],
            ),
            Flexible(child: editorbutton()),
            Flexible(
              flex: 5,
              child: SizedBox(
                  child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    color: Colors.amber,
                    child: Center(child: Text('Entry')),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              )),
            )
          ])),
      debugShowCheckedModeBanner: false,
    );
  }
}

class editorbutton extends StatefulWidget {
  @override
  _editorbuttonState createState() => _editorbuttonState();
}

class _editorbuttonState extends State<editorbutton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => profileeditor()));
          },
          child: Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              child: Center(
                  child: Text('Edit profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 15))),
            ),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
