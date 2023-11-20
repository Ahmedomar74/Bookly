import 'package:booklyapp/core/uitls/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 28,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 28,
            width: 90,
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