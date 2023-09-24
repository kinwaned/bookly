import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(borderRadius: BorderRadius.circular(10),),
            );
          }),
    );
  }
}
