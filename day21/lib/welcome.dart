import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  String name;
  String email;

  Welcome(this.name, this.email);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("data"),
      ),
    );
  }
}
