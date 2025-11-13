import 'package:bookly/Feature/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/featured_book_list_view.dart';
import 'package:bookly/core/utils/asset.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), FeaturedBookListViewBuilder()]);
  }
}
