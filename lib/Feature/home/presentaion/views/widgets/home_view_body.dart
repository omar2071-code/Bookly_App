import 'package:bookly/Feature/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/featured_book_list_view.dart';
import 'package:bookly/core/utils/asset.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBookListViewBuilder(),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text('Best Seller', style: Style.textStyle18),
        ),
        SizedBox(height: 20),
        BestSellerListView(),
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 140,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),

                image: DecorationImage(
                  image: AssetImage(AssetData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
