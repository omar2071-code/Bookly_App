import 'package:bookly/Feature/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookListViewBuilder extends StatelessWidget {
  const FeaturedBookListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
