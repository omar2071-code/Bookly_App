import 'package:bookly/Feature/search/presentation/views/widgets/custom_search_box.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: Column(
        children: [
          CustomSearchBox(),
          SizedBox(height: 10),
          //  CustomSearchListView(),
        ],
      ),
    );
  }
}
