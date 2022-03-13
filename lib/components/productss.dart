import 'package:flutter/material.dart';
import 'package:shop_ui/components/productcard.dart';
import 'package:shop_ui/components/section_title.dart';
import 'package:shop_ui/model/product.dart';
import 'package:shop_ui/screens/home/details/details_screen.dart';

class NewArrival extends StatelessWidget {
  final String newtitle;
  const NewArrival({
    required this.newtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          pressseeall: () {},
          title: newtitle,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                demoproduct.length,
                (index) => ProductCard(
                    bgColor: demoproduct[index].bgColor,
                    title: demoproduct[index].title,
                    image: demoproduct[index].image,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: demoproduct[index],
                          ),
                        ),
                      );
                    },
                    price: demoproduct[index].price)),
          ),
        )
      ],
    );
  }
}
