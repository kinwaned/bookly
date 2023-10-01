import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .22),
          child: CustomBookImage(
            borderRadius: BorderRadius.circular(20),
            imgUrl:
                'https://m.media-amazon.com/images/M/MV5BMTc3NTUzNTI4MV5BMl5BanBnXkFtZTgwNjU0NjU5NzE@._V1_.jpg',
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Harry Potter And the Goblet of Fire',
          style: Styles.textStyle26,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'J.K Rowling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 16),
         const BookRating(
          mainAxisAlignment: MainAxisAlignment.center, rating: 5, count: 250,
        ),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
