import 'package:flutter/material.dart';
import 'package:money_me/services/auth.dart';


class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Money Me'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person, color: Colors.white,),
                label: Text('Logout', style: TextStyle(color: Colors.white)),
                onPressed: () async {
                  await _auth.signOut();
                },

              )
          ],
        )
      )
    );
  }
}
