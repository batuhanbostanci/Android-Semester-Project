import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.drive_file_rename_outline),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Surname',
                    prefixIcon: Icon(Icons.drive_file_rename_outline),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.vpn_key),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                    child: ElevatedButton.icon(
                      label: Text("Register"),
                      icon: Icon(Icons.app_registration),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
