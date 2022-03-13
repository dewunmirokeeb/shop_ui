import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/components/search_form.dart';
import 'package:shop_ui/constants.dart';
import '../../components/categories.dart';
import '../../components/productss.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
          ),
        ),
        title: Row(
          children: [
            const SizedBox(
              width: defaultPadding * 2,
            ),
            SvgPicture.asset(
              'assets/icons/Location.svg',
              width: 12,
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            const Text(
              ' Lagos Nigeria',
              style: TextStyle(
                color: Colors.black,
                // fontFamily: s,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Notification.svg',
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Explore',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
                const Text(
                  ' best quality Outfits for you',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: SearchForm(),
                ),
                const Categories(),
                const SizedBox(
                  height: defaultPadding,
                ),
                const NewArrival(
                  newtitle: 'New Arrival',
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const NewArrival(
                  newtitle: 'Popular',
                )
              ]),
        ),
      ),
    );
  }
}
