import 'package:flutter/material.dart';

import 'Mobile/Mobile-Home.dart';
import 'Web/Web-Home.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double H=MediaQuery.of(context).size.height;
    double W=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff191919),
        endDrawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Handle the tap
                },
              ),
            ],
          ),
        ),
      body:SingleChildScrollView(
        child: LayoutBuilder(
            builder:(context, constraints) {
              if(constraints.maxWidth>350){
                //web version
                return WebHome(W: W, H: H);
              }else{
                //Mobile version
                return MobileHome(W: W, H: H);
              }
            },
        )
      )
    );
  }
}

