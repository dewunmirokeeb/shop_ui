import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';

class ColorDot extends StatelessWidget {
  final Color colordot;
  final bool isactive;
  final VoidCallback press;
  const ColorDot({
    required this.colordot,
    required this.isactive,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:
              Border.all(color: isactive ? primaryColor : Colors.transparent),
        ),
        child: CircleAvatar(
          backgroundColor: colordot,
          radius: 10,
        ),
      ),
    );
  }
}
