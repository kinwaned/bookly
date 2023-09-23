import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';

class CustomBookCartAppBar extends StatelessWidget {
  const CustomBookCartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kBookDetailsView);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 31)),
          Expanded(
            child: Center(
              child: Text(
                'Cart',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // IconButton(
          //     onPressed: () {
          //       GoRouter.of(context).push(AppRouter.kBookCart);
          //     }, icon: const Icon(Icons.shopping_cart_outlined, size: 31,)),
        ],
      ),
    );
  }
}
