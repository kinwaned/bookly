import 'package:bookly/core/function/url_launcher.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              backgroundColor: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async{
              launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
              text: getPreview(bookModel),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              backgroundColor: const Color(0xffEF8262),
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  getPreview(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null){
      return 'Not available';
    }else {
      return 'Preview';
    }
  }
}
