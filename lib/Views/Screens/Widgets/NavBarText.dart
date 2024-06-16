import 'package:flutter/material.dart';

class NavBarText extends StatelessWidget {
  const NavBarText({
    super.key, required this.name, required this.scrollKey,
  });
  final String name;
  final GlobalKey scrollKey;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Scrollable.ensureVisible(scrollKey.currentContext!);
      },
      child: Text(name,
        style: TextStyle(
            color: Colors.grey
        ),
      ),
    );
  }
}
