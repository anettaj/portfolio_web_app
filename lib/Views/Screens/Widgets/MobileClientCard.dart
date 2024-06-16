

import 'package:flutter/material.dart';

class MobileClientCard extends StatelessWidget {
  const MobileClientCard({
    super.key,
    required this.W, required this.address, required this.title, required this.platform,
  });

  final double W;
  final String address;
  final String title;
  final String platform;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: CircleAvatar(
              foregroundImage: AssetImage(address),
              radius: 50,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              Text(platform,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ],
          ),
        ],
      ),
    );
  }
}