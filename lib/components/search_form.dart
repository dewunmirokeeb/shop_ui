import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search items...',
            filled: true,
            fillColor: Colors.white,
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            suffixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: SizedBox(
                height: 48,
                width: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(defaultBorderRadius)))),
                  onPressed: () {},
                  child: SvgPicture.asset('assets/icons/Filter.svg'),
                ),
              ),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            )),
      ),
    );
  }
}
