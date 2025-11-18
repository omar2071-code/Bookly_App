import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_text.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(
            context,
          ).push(AppRouter.kBookDetailsView, extra: bookModel);
        },
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
              ),
              SizedBox(width: 30),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: '${bookModel.volumeInfo.title}',
                        style: Style.textStyle18,
                      ),
                      SizedBox(height: 5),
                      CustomText(
                        text:
                            bookModel.volumeInfo.authors?.first ?? "No Author",
                        style: Style.textStyle14.copyWith(
                          fontFamily: kMontserrat,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text('Free ', style: Style.textStyle18),
                          Spacer(),
                          BookRating(rate: "(50)", count: "300"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
