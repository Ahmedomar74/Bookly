import 'package:booklyapp/core/uitls/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBady extends StatelessWidget {
  const SplashViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Read Books For Free',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
