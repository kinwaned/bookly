import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomSearchTextField(),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        // child: NewestBooksListViewItem(),
        child: Text('data'),
      ),
    );
  }
}
