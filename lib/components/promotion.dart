import 'package:flutter/material.dart';

class Promotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Ongoing Promos', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: (){},
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 8.0),
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blue[600]
                    ]
                  ),
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(20.0, 20.0),
                          bottomRight: Radius.elliptical(150.0, 150.0)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                        child: Text('%', style: TextStyle(fontSize: 24.0,color: Colors.white),),
                      ),
                    ),
                    Expanded(child: Container(),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Lihat Semua \nPromo', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18.0),),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}