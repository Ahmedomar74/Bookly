import 'package:booklyapp/Feature/home/presentation/views/widgets/book_details_section.dart';
import 'package:booklyapp/Feature/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:booklyapp/Feature/home/presentation/views/widgets/similler_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(
                  height: 15,
                ),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimilerBookSction(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
