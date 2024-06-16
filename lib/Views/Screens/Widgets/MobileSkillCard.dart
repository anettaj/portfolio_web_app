import 'package:flutter/material.dart';

class MobileSkillCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  const MobileSkillCard({
    super.key,
    required this.W,
    required this.icon,
    required this.title,
    required this.description,
  });

  final double W;

  @override
  State<MobileSkillCard> createState() => _MobileSkillCardState();
}

class _MobileSkillCardState extends State<MobileSkillCard> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    _animation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        color: Colors.grey.withOpacity(0.3),
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                widget.icon,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Container(

                width: widget.W * 0.9,
                child: Text(
                  widget.description,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
