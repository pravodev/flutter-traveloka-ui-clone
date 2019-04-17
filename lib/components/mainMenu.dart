import 'package:flutter/material.dart';

import '../pages/allProduct.dart';
import '../pages/screen.dart';

List<MainMenuItem> mainMenuItem = [
  MainMenuItem(
    title:'Flights',
    icon: Icons.flight,
    colorBox: Colors.blue,
    iconColor: Colors.white,
    screenTitle: 'Search Flights',
    screenContent: 'Pencarian Penerbangan'
  ),
  MainMenuItem(
    title:'Hotels',
    icon: Icons.hotel,
    colorBox: Colors.blue[900],
    iconColor: Colors.white,
    screenTitle: 'Search Hotels',
    screenContent: 'Pencarian Hotel'
  ),
  MainMenuItem(
    title:'Flight + Hotel',
    icon: Icons.flight_land,
    colorBox: Colors.purple,
    iconColor: Colors.white,
    screenTitle: 'Search Flight + Hotel',
    screenContent: 'Pencarian Pesawan + Hotel'
  ),
  MainMenuItem(
    title:'Attractions & Activities',
    icon: Icons.local_play,
    colorBox: Colors.green[300],
    iconColor: Colors.white,
    screenTitle: 'Attractions & Activities',
    screenContent: 'Aktivitas'
  ),
  MainMenuItem(
    title:'Eats',
    icon: Icons.local_dining,
    colorBox: Colors.orange,
    iconColor: Colors.white,
    screenTitle: 'Search Food',
    screenContent: 'Makanan'
  ),
  MainMenuItem(
    title:'Trains',
    icon: Icons.train,
    colorBox: Colors.orange[300],
    iconColor: Colors.white,
    screenTitle: 'Search Train',
    screenContent: 'Pencarian Kereta'
  ),
  MainMenuItem(
    title:'Bus & Shuttle',
    icon: Icons.directions_bus,
    colorBox: Colors.green,
    iconColor: Colors.white,
    screenTitle: 'Search Bus & Shuttle',
    screenContent: 'Pencarian Bus & Shuttle'
  ),
  MainMenuItem(
    title:'Airport Transfer',
    icon: Icons.hotel,
    colorBox: Colors.blue[300],
    iconColor: Colors.white,
    screenTitle: 'Search Airport Transfer',
    screenContent: 'Search Airport Transfer'
  ),
  MainMenuItem(
    title:'Car Rental',
    icon: Icons.hotel,
    colorBox: Colors.green[900],
    iconColor: Colors.white,
    screenTitle: 'Search Car Rental',
    screenContent: 'Pencarian Rental Mobil'
  ),
  MainMenuItem(
    title:'All Products',
    icon: Icons.apps,
    colorBox: Colors.grey,
    iconColor: Colors.white,
    screenWidget: AllProduct()
  ),
];

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      childAspectRatio: 1.0,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 4.0,
      children: mainMenuItem,
    );
  }
}

class MainMenuItem extends StatelessWidget {
  final String title, screenTitle, screenContent;
  final IconData icon;
  final Color colorBox, iconColor;
  final Widget screenWidget;

  MainMenuItem({this.title, this.icon, this.colorBox, this.iconColor, this.screenTitle, this.screenContent, this.screenWidget});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            color: colorBox,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(icon, color: iconColor),
            onPressed: (){
              Route route = MaterialPageRoute(
                builder: (context){
                  if(screenWidget == null){
                    return ScreenGeneral(
                      title: screenTitle,
                      content: screenContent,
                    );
                  }

                  return screenWidget;
                }
              );

              Navigator.of(context).push(route);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0,),
          child: Text(title, style: TextStyle(fontSize: 12.0), textAlign: TextAlign.center,),
        )
      ],
    );
  }
}