import 'package:flutter/material.dart';
import 'package:UpsideBudget/screens/authenticate/register_test.dart';
import 'package:UpsideBudget/screens/authenticate/sign_in_test.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn) {
      return SignIn(toggleView: toggleView);
    }
    else {
      return Register(toggleView: toggleView);
    }
  }
}
