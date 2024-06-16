import 'package:flutter/material.dart';

class MobileProjectCard extends StatefulWidget {
  final String address;
  final String title;
  final String description;
  final double W;

  const MobileProjectCard({
    Key? key,
    required this.address,
    required this.title,
    required this.W,
    required this.description,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<MobileProjectCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (mounted) {
          setState(() {
            _isHovering = !_isHovering;
          });
        }
      },
      child: Container(

        margin: EdgeInsets.only(right: 10, left: 20, top: 10),
        child: Center(
          child: Stack(
            children: [
              Image.asset(
                widget.address,
                fit: BoxFit.cover,
                height: 400,
              ),
              if (_isHovering)
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text(
                            widget.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        if (widget.description.isNotEmpty)
                          Container(
                            padding: EdgeInsets.all(15),
                            color: Colors.black.withOpacity(0.6),
                            width: widget.W * 0.6,
                            child: Text(
                              widget.description,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
