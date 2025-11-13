import 'package:bookly/Feature/home/presentaion/views/widgets/best_seller_sliver_list.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/featured_book_list_view.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBookListViewBuilder(),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Best Seller', style: Style.textStyle18),
              ),
            ],
          ),
        ),
        BestSellerSliverList(),
      ],
    );
  }
}
