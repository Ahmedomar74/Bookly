import 'package:booklyapp/Feature/home/presentation/views/widgets/book_details_view_bady.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(),
      ),
    );
  }
}