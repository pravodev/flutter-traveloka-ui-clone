import 'package:flutter/material.dart';

import '../components/additionalMenu.dart';
import '../components/cardAccount.dart';
import '../components/mainMenu.dart';
import '../components/promotion.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trapel'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          CardAccount(),
          Divider(),
          MainMenu(),
          AdditionalMenu(),
          Promotion()
        ],
      )
    );
  }
}

