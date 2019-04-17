import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Booking'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.library_books),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          ),
        ],
      ),
      body: Center(
        child: Text('My Booking'),
      ),
    );
  }
}