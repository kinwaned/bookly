import 'package:bookly/features/home/presentation/views/widgets/book_cart_body.dart';
import 'package:flutter/material.dart';

class BookCart extends StatelessWidget {
  const BookCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookCartBody()),
    );
  }
}
