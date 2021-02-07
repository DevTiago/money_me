import 'package:flutter/material.dart';
import 'package:money_me/models/user.dart';
import 'package:money_me/screens/authenticate/authenticate.dart';
import 'package:money_me/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<AppUser>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
