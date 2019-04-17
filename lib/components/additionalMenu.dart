import 'package:flutter/material.dart';

class AdditionalMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: additionalMenuItem,
      ),
    );
  }
}

List<AdditionalMenuItem> additionalMenuItem = [
  AdditionalMenuItem(title: 'Bill & Top-up', icon: Icons.receipt,),
  AdditionalMenuItem(title: 'International Data Plans', icon: Icons.data_usage,),
  AdditionalMenuItem(title: 'Movies', icon: Icons.movie,),
  AdditionalMenuItem(title: 'PayLater', icon: Icons.payment,),
  AdditionalMenuItem(title: 'Flight Status', icon: Icons.airplanemode_active,),
  AdditionalMenuItem(title: 'Top-Up & Data Packages', icon: Icons.signal_cellular_4_bar,),
  AdditionalMenuItem(title: 'Online Check-In', icon: Icons.flight_land,),
  AdditionalMenuItem(title: 'Price Alert', icon: Icons.notifications_active,),
];

class AdditionalMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  AdditionalMenuItem({this.icon, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 12.0),)
        ],
      ),
    );
  }
}