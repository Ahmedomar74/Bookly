import 'package:booklyapp/core/uitls/assets.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amber,
          image: const DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
