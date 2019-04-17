import 'package:flutter/material.dart';

class AllProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Products'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}