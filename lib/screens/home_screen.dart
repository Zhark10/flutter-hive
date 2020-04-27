import 'package:flutter/material.dart';
import 'package:flutter_hive/models/main_box.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of<GlobalState>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Change color'),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Expanded(
      //         child: Container(
      //           child: ContactsList(),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Change color button',
        child: Icon(Icons.color_lens),
        onPressed: () {
          // Navigator.pushNamed(context, '/AddContactScreen');
        },
      ),
    );
  }
}