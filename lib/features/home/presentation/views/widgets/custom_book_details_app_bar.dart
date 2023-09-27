import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kHomeView);
              },
              icon: const Icon(Icons.close, size: 31)),
          Expanded(
            child: Center(
              child: Text(
                'Book Details',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kBookCart);
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 31,
              )),
        ],
      ),
    );
  }
}
