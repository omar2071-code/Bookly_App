import 'package:bookly/Feature/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_text.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/asset.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
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
            SizedBox(width: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Harry Potter and the Goblet of Fire',
                      style: Style.textStyle18,
                    ),
                    SizedBox(height: 10),
                    CustomText(
                      text: 'J.K. Rowling',
                      style: Style.textStyle14.copyWith(
                        fontFamily: kMontserrat,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('19.9 e', style: Style.textStyle20),
                        Spacer(),
                        BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
