import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:shop_ui/constants.dart';

class CategoryCard extends StatelessWidget {
  final String icon, title;
  final VoidCallback press;
  const CategoryCard({
    Key? key,
    required this.title,
    required this.press,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)))),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
          child: Column(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ));
  }
}
