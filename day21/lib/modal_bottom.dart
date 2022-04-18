import 'package:flutter/material.dart';

class ModalBottomDemo extends StatefulWidget {
  const ModalBottomDemo({Key? key}) : super(key: key);

  @override
  State<ModalBottomDemo> createState() => _ModalBottomDemoState();
}

class _ModalBottomDemoState extends State<ModalBottomDemo> {
  Future _showModal() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(children: [
              ListTile(
                leading: Icon(Icons.shopping_cart),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              )
            ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          _showModal();
          // showModalBottomSheet(
          //     context: context,
          //     builder: (context) {
          //       return Container(
          //         height: 200,
          //         width: 200,
          //         decoration: BoxDecoration(
          //             color: Colors.pinkAccent,
          //             borderRadius: BorderRadius.circular(25.0)),
          //         child: Column(
          //           children: [
          //             ListTile(
          //               leading: Icon(Icons.shopping_cart),
          //               title: Text('Add to Cart'),
          //               trailing: Icon(Icons.edit),
          //             ),
          //             ListTile(
          //               leading: Icon(Icons.check_circle),
          //               title: Text('Check out'),
          //               trailing: Icon(Icons.edit),
          //             ),
          //           ],
          //         ),
          //       );
          //     });
        },
        child: Text('Show'),
      )),
    );
  }
}
