import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'similar_books_list_view.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomBookDetailsAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .27),
          child: CustomBookImage(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
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
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(height: 37),
              const BooksAction(),
              const SizedBox(
                height: 50,
              ),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You may also like',
                  style: Styles.textStyle16.copyWith(
                    fontFamily: kMontserrat,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: SimilarBooksListView(),
        ),
      ],
    );
  }
}
