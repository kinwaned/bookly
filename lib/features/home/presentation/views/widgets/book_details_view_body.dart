import 'package:bookly/features/home/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
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
          child:  CustomBookImage(borderRadius: BorderRadius.circular(20),),
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
              const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
              const SizedBox(height: 6),
              Container(),
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                    ),
                    child: Center(
                        child: Text(
                      '19.99€',
                      style: Styles.textStyle20.copyWith(
                          fontFamily: kMontserrat,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
                  ),
                  Container(
                    width: 150,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Center(
                        child: Text(
                      'Free Preview',
                      style: Styles.textStyle14.copyWith(
                          fontFamily: kMontserrat,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'You may also like',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: AlsoLikeListView(),
        ),
      ],
    );
  }
}
