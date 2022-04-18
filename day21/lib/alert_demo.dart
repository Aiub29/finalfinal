import 'package:flutter/material.dart';

class AlertDemo extends StatefulWidget {
  const AlertDemo({Key? key}) : super(key: key);

  @override
  State<AlertDemo> createState() => _AlertDemoState();
}

class _AlertDemoState extends State<AlertDemo> {
  Future _showDialog() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            backgroundColor: Colors.pinkAccent,
            title: Text('Alert !'),
            content: Text('Do You want to Delete ?'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('No')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showDialog();
          },
          child: Text('Confirm'),
        ),
      ),
    );
  }
}
