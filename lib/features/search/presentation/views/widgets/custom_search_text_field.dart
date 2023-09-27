import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/home_view.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width * .9,
          padding: const EdgeInsets.only(right: 20, left: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  style: Styles.textStyle16.copyWith(
                      color: Colors.black38, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeView()));
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    hintStyle: Styles.textStyle16.copyWith(
                        color: Colors.black38, fontWeight: FontWeight.bold),
                    hintText: 'Search',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Icon(Icons.search, color: Colors.grey.shade400),
            ],
          ),
        ),
      ],
    );
  }
}
