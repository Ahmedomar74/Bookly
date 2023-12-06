import 'package:booklyapp/Feature/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Feature/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/Feature/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:booklyapp/Feature/home/presentation/views/widgets/custom_list_item.dart';
import 'package:booklyapp/core/uitls/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .19),
            child: const CustomListItem(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Rudyard Kipling',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 8,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const BookAction(),
        ],
      ),
    );
  }
}
