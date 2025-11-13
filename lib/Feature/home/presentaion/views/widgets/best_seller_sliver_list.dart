import 'package:bookly/Feature/home/presentaion/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: BestSellerItem(),
          ),
      itemCount: 10,
    );
  }
}
