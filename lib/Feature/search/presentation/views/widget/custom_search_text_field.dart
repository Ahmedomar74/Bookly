import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: Opacity(
          opacity: .8,
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        enabledBorder: buildOutLineInputBroder(),
        focusedBorder: buildOutLineInputBroder(),
      ),
    );
  }
}

OutlineInputBorder buildOutLineInputBroder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(16),
  );
}
