import 'package:flutter/material.dart';
import 'custom_book_cart_app_bar.dart';

class BookCartBody extends StatefulWidget {
  const BookCartBody({super.key});

  @override
  State<BookCartBody> createState() => _BookCartBodyState();
}

class _BookCartBodyState extends State<BookCartBody> {
  bool isDarkModeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomBookCartAppBar(),
          const SizedBox(height: 20),
          Switch(
            value: isDarkModeEnabled,
            onChanged: (value) {
              setState(() {
                isDarkModeEnabled = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
