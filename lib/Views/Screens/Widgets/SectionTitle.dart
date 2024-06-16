import 'package:flutter/material.dart';


class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double W=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 10,bottom: 10,top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: SizedBox(
              width: W*0.06,
                child: Divider(
                  thickness: 2.0,
                  color: Colors.pink,
                )
            ),
          ),
          Text(title,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5
            ),
          ),
        ],
      ),
    );
  }
}
