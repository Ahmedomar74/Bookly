import 'package:booklyapp/core/uitls/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 55,
        bottom: 20,
        right: 30,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 40,
            width: 100,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 30,
              )),
        ],
      ),
    );
  }
}
