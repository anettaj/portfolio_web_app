import 'package:flutter/material.dart';

import 'Mobile/Mobile-Home.dart';
import 'Web/Web-Home.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double H=MediaQuery.of(context).size.height;
    double W=MediaQuery.of(context).size.width;
    var key1 = GlobalKey();
    var key2 = GlobalKey();
    var key3 = GlobalKey();
    var key4 = GlobalKey();
    return Scaffold(
      backgroundColor: Color(0xff191919),
        endDrawer: Drawer(
          backgroundColor: Color(0xff191919),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: H*0.2,
                width: W*0.5,
                color: Colors.black,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.home,
                  color: Colors.white,),
                  title: Text('Home',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  onTap: () {
                    Scrollable.ensureVisible(key1.currentContext!);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.assignment,
                    color: Colors.white,),
                  title: Text('Project',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  onTap: () {
                    Scrollable.ensureVisible(key3.currentContext!);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.work,
                    color: Colors.white,),
                  title: Text('Experience',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  onTap: () {
                    Scrollable.ensureVisible(key3.currentContext!);
                  },
                ),
              ),
            ],
          ),
        ),
      body:SingleChildScrollView(
        child: LayoutBuilder(
            builder:(context, constraints) {
              if(constraints.maxWidth>400){
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

