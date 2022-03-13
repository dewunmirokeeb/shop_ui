import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';

class ProductCard extends StatelessWidget {
  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback press;

  const ProductCard({
    required this.bgColor,
    required this.title,
    required this.image,
    required this.press,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 2),
        width: 154,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(defaultBorderRadius))),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(
              height: defaultBorderRadius / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: defaultPadding / 4,
                ),
                Text(
                  '₦' + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
