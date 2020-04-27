import 'package:flutter/material.dart';
import 'package:flutter_hive/models/main_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final service = Provider.of<MainProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Change color'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Center(
                    child: Container(
              padding: const EdgeInsets.all(0.0),
              color: service?.globalState?.colorTheme,
              width: 80.0,
              height: 80.0,
            )))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Change color button',
        child: Icon(Icons.color_lens),
        onPressed: () {
          service.changeColorTheme(Colors.green);
          // Navigator.pushNamed(context, '/AddContactScreen');
        },
      ),
    );
  }
}
