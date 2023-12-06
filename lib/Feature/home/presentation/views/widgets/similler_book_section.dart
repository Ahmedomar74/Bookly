import 'package:booklyapp/Feature/home/presentation/views/widgets/similler_books_list_view.dart';
import 'package:booklyapp/core/uitls/styles.dart';
import 'package:flutter/material.dart';

class SimilerBookSction extends StatelessWidget {
  const SimilerBookSction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 18,
        ),
        const SimilarBooksListViewState(),
      ],
    );
  }
}
