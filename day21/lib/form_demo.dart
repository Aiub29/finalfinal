import 'package:day21/welcome.dart';
import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(label: Text('Eneter Your name')),
          ),
          TextFormField(
            decoration: InputDecoration(label: Text('Eneter Your Email')),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Welcome(
                            nameController.text, emailController.text)));
              },
              child: Text('Submit'))
        ],
      )),
    );
  }
}
