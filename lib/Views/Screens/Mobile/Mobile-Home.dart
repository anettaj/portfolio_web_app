import 'package:flutter/cupertino.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';
import '../Widgets/ClientCard.dart';
import '../Widgets/CurvedLinePainter.dart';
import '../Widgets/MobileClientCard.dart';
import '../Widgets/MobileProjectCard.dart';
import '../Widgets/MobileSkillCard.dart';
import '../Widgets/ProjectCard.dart';
import '../Widgets/SectionTitle.dart';
import '../Widgets/SkillCard.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({
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
    return Column(
      children: [
        // Nav And Hero section
        Container(
          color: Colors.grey.withOpacity(0.3),
          padding: EdgeInsets.only(bottom: 30),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Builder(
                        builder: (context) {
                          return InkWell(
                            onTap: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            child: Icon(
                              Icons.menu,
                              size: 40,
                              color: Colors.white,
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: 8,
                        height: 70,
                      ),
                    ],
                  ),
                  // My image
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Image.asset(
                      'assets/profile logo.png',
                      height: H * 0.5,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: RichText(
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
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    width: W * 0.9,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'I am a self-taught Flutter developer passionate about creating innovative mobile applications. With a strong determination to learn and grow in the field of mobile app development',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Print CV',
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        //My Services
        Container(
          key: key2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: 'My Services',),
              MobileSkillCard(
                W: W,
                icon: Icons.design_services_sharp,
                title: 'UI/UX Design',
                description: 'Perferendis doloribus asperiores repellat quia voluptas aspernatur te natus accusan maiores alias consequatur aut aut.',

              ),
              MobileSkillCard(
                W: W,
                icon: Icons.web,
                title: 'Web Development',
                description: 'Design, Develop and Maintain your websites with latest technologies and improved security to give best performance to your customers.',

              ),
              MobileSkillCard(
                W: W,
                icon: Icons.mobile_friendly,
                title: 'App Development',
                description: 'Design, Develop and Maintain your websites with latest technologies and improved security to give best performance to your customers.',

              ),


            ],
          ),
        ),
        //My project
        Container(
          child: Column(
            children: [
              SectionTitle(title: 'My Project',),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: H * 0.7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: ImageSlideshow(
                      indicatorColor: Colors.blue,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 60000,
                      isLoop: true,
                      children: [
                        MobileProjectCard(
                          address: 'assets/Mobile Project/wataburger.png',
                          title: 'Wataburger',
                          W: W,
                          description: 'This app is a cutting-edge solution designed to cater to the modern diner’s need for convenience, speed, and customization, all while maintaining the high standards of quality and service that the restaurant is known for.',
                        ),
                        MobileProjectCard(
                          address: 'assets/Mobile Project/Listify.png',
                          title: 'Listify',
                          W: W,
                          description: 'To do List.\nSeamless UI design\nDeveloped using Dart and Flutter.\nIntuitive and responsive UI.',
                        ),
                        MobileProjectCard(
                          address: 'assets/Mobile Project/MovieMania.png',
                          title: 'Movie Mania',
                          W: W,
                          description: 'Displayes the details of movies.\nApi integration\nSearch feature is added\nDeveloped using Dart and Flutter.\nIntuitive and responsive UI.',
                        ),
                        MobileProjectCard(
                          address: 'assets/Mobile Project/bmi.png',
                          title: 'BMI Calculator',
                          W: W,
                          description: 'Calculates BMI based on height and weight.\nInput validation and BMI logic.\nVisual representation of BMI categories.',
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //Client Project
        Container(
          child: Column(
            children: [
              SectionTitle(title: 'Client Project',),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: H * 0.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: ImageSlideshow(
                      indicatorColor: Colors.blue,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 60000,
                      isLoop: true,
                      children: [
                        MobileClientCard(
                          W: W,
                          address: 'assets/Client Projects/TNDC.png',
                          title: 'TNDC',
                          platform: '- Android\n- IOS',
                        ),
                        MobileClientCard(
                          W: W,
                          address: 'assets/Client Projects/KSDC.png',
                          title: 'KSDC',
                          platform: '- Android\n- IOS',
                        ),
                        MobileClientCard(
                          W: W,
                          address: 'assets/Client Projects/nammakudla.png',
                          title: 'Nammakudla',
                          platform: '- Android\n- IOS',
                        ),
                        MobileClientCard(
                          W: W,
                          address: 'assets/Client Projects/Accolade.png',
                          title: 'Accolade',
                          platform: '- Android\n- IOS',
                        ),
                        MobileClientCard(
                          W: W,
                          address: 'assets/Client Projects/camera konnect.png',
                          title: 'Camera konnect',
                          platform: '- Android',
                        ),

                        MobileClientCard(
                          W: W,
                          address: 'assets/Client Projects/Nammakudla Prime.png',
                          title: 'Nammakudla Prime',
                          platform: '- Android',
                        ),

                      ],
                    ),
                  ),
                ),
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
