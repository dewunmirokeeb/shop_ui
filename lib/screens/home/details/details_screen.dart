import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/components/colordot.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/model/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          iconSize: 40,
          color: Colors.black,
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'assets/icons/Heart.svg',
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                defaultPadding,
                defaultPadding * 2,
                defaultPadding,
                defaultPadding,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text('Casual Henley Shirts',
                                style: Theme.of(context).textTheme.headline6),
                          ),
                          const SizedBox(
                            width: defaultPadding,
                          ),
                          Text(
                            "₦" + product.price.toString(),
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        child: Text(
                            "A Henley shirt is a collarless pullover shirt,"
                            " characterized by a round neckline and a placket"
                            "about 3 to 5 inches (8 to 13 cm) long and usually"
                            "having 2–5 buttons. It essentially is a collarless"
                            " polo shirt. The sleeves may be either short or long,"
                            " and it can be made in almost any fabric,",
                            textAlign: TextAlign.justify,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 15)),
                      ),
                      const Text(
                        "Colors",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      Row(
                        children: [
                          ColorDot(
                            isactive: false,
                            colordot: const Color(0xFFBEE8EA),
                            press: () {},
                          ),
                          ColorDot(
                            isactive: true,
                            colordot: const Color(0XFF141B4A),
                            press: () {},
                          ),
                          ColorDot(
                            isactive: false,
                            colordot: const Color(0xFFF4E5C3),
                            press: () {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: defaultPadding * 1.5,
                      ),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Add to cart'),
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                primary: primaryColor),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
