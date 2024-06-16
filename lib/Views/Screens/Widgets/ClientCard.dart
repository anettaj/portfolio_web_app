import 'package:flutter/material.dart';

class ClientCard extends StatelessWidget {
  const ClientCard({
    super.key,
    required this.W, required this.address, required this.title, required this.platform,
  });

  final double W;
  final String address;
  final String title;
  final String platform;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.brown,
          height: 150,
          width: 280,
        ),
        Positioned(
          left: 20,
          top: 20,
          child: Container(
            height: 130,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
        Positioned(
            top: W*0.04,
            left: W*0.08,
            child: Container(
              width: W*0.2,
              height: W*0.09,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 8,),
                  Text(platform,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                ],
              ),
            )),
        CircleAvatar(
          foregroundImage: AssetImage(address),
          radius: 50,
        )
      ],
    );
  }
}