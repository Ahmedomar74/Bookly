import 'package:booklyapp/Feature/home/presentation/views/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListViewState extends StatelessWidget {
  const SimilarBooksListViewState({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .19,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16),
              child: CustomBookImage(
                imageUrl:
                    'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg',
              ),
            );
          }),
    );
  }
}
