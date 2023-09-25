import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You may also like',
          style: Styles.textStyle16.copyWith(
              fontFamily: kMontserrat,
              fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}