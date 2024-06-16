import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Widgets/ClientCard.dart';
import '../Widgets/CurvedLinePainter.dart';
import '../Widgets/DownloadButton.dart';
import '../Widgets/NavBarText.dart';
import '../Widgets/ProjectCard.dart';
import '../Widgets/SectionTitle.dart';
import '../Widgets/SkillCard.dart';


class WebHome extends StatelessWidget {
  const WebHome({
    super.key,
    required this.W,
    required this.H,
  });

  final double W;
  final double H;

  @override
  Widget build(BuildContext context) {
    var key1 = GlobalKey();
    var key2 = GlobalKey();
    var key3 = GlobalKey();
    var key4 = GlobalKey();
    bool _isHovered = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //nav options
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: W *0.45,
              height: 70,
            ),
            NavBarText(name: 'Home', scrollKey: key1,),
            NavBarText(name: 'About', scrollKey: key2,),
            NavBarText(name: 'Resume', scrollKey: key2,),
            NavBarText(name: 'Project', scrollKey: key3,),
            NavBarText(name: 'Experience', scrollKey: key2,),
            NavBarText(name: 'Contact', scrollKey: key2,),
            //menu
            InkWell(
              onTap: (){
                Scaffold.of(context).openEndDrawer();
              },
              child: Icon(
                Icons.menu,
                size: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 8,
              height: 70,
            ),
          ],
        ),
        // Hero section
        Container(
          key: key1,
          color: Colors.grey.withOpacity(0.3),
          margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Hi, I\'m ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Anet Taj',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CustomPaint(
                          size: Size(200, 100),
                          painter: CurvedLinePainter(),
                        ),
                      ),
                      Text('Flutter Developer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 39,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: W*0.5,
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('I am a self-taught Flutter developer passionate about creating innovative mobile applications. With a strong determination to learn and grow in the field of mobile app development',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                  ),
                  DownloadButton()

                ],
              ),
              //my image
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30),
                child: Image.asset('assets/profile logo.png',
                  height: H*0.48,
                ),
              ),



            ],
          ),
        ),
        //My Services
        Container(
          key: key2,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: 'My Services',),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SkillCard(
                      W: W,
                      icon: Icons.design_services_sharp,
                      title: 'UI/UX Design',
                      description: 'Perferendis doloribus asperiores repellat quia voluptas aspernatur te natus accusan maiores alias consequatur aut aut.',

                    ),
                    SkillCard(
                      W: W,
                      icon: Icons.web,
                      title: 'Web Development',
                      description: 'Design, Develop and Maintain your websites with latest technologies and improved security to give best performance to your customers.',

                    ),
                    SkillCard(
                      W: W,
                      icon: Icons.mobile_friendly,
                      title: 'App Development',
                      description: 'Design, Develop and Maintain your websites with latest technologies and improved security to give best performance to your customers.',

                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
        //My Projects,
        Container(
          key: key3,
          margin: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: 'My Projects'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProjectCard(
                      address: 'assets/Mobile Project/wataburger.png',
                      title: 'Wataburger',
                      W: W,
                      description: 'This app is a cutting-edge solution designed to cater to the modern diner’s need for convenience, speed, and customization, all while maintaining the high standards of quality and service that the restaurant is known for.',
                    ),

                    ProjectCard(
                      address: 'assets/Mobile Project/Listify.png',
                      title: 'Listify',
                      W: W,
                      description: 'To do List.\nSeamless UI design\nDeveloped using Dart and Flutter.\nIntuitive and responsive UI.',
                    ),

                    ProjectCard(
                      address: 'assets/Mobile Project/MovieMania.png',
                      title: 'Movie Mania',
                      W: W,
                      description: 'Displayes the details of movies.\nApi integration\nSearch feature is added\nDeveloped using Dart and Flutter.\nIntuitive and responsive UI.',
                    ),
                    ProjectCard(
                      address: 'assets/Mobile Project/bmi.png',
                      title: 'BMI Calculator',
                      W: W,
                      description: 'Calculates BMI based on height and weight.\nInput validation and BMI logic.\nVisual representation of BMI categories.',
                    ),
                ]
                ),
              )
            ],
          ),
        ),
        // Client projects,
        Container(
          margin: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: 'Client Projects'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClientCard(
                    W: W,
                    address: 'assets/Client Projects/TNDC.png',
                    title: 'TNDC',
                    platform: '- Android\n- IOS',
                  ),
                  ClientCard(
                    W: W,
                    address: 'assets/Client Projects/KSDC.png',
                    title: 'KSDC',
                    platform: '- Android\n- IOS',
                  ),
                  ClientCard(
                    W: W,
                    address: 'assets/Client Projects/nammakudla.png',
                    title: 'Nammakudla',
                    platform: '- Android\n- IOS',
                  ),
                  // ClientCard(
                  //   W: W,
                  //   address: 'assets/Client Projects/Nammakudla Prime.jpeg',
                  //   title: 'Nammakudla',
                  //   platform: '- Android\n- IOS',
                  // ),

                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClientCard(
                    W: W,
                    address: 'assets/Client Projects/Accolade.png',
                    title: 'Accolade',
                    platform: '- Android\n- IOS',
                  ),
                  ClientCard(
                    W: W,
                    address: 'assets/Client Projects/camera konnect.png',
                    title: 'Camera konnect',
                    platform: '- Android',
                  ),

                  ClientCard(
                    W: W,
                    address: 'assets/Client Projects/Nammakudla Prime.png',
                    title: 'Nammakudla Prime',
                    platform: '- Android',
                  ),

                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: H*0.5,

        )

      ],
    );
  }
}







