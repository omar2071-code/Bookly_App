import 'package:bookly/core/utils/asset.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage(AssetData.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
