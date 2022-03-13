import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/model/category.dart';

import 'categorycard.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          democategories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: CategoryCard(
              press: () {},
              title: democategories[index].title,
              icon: democategories[index].icon,
            ),
          ),
        ),
      ),
    );
  }
}
