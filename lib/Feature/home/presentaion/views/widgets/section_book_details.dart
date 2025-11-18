import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_book_action.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/asset.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class SectionBookDetails extends StatelessWidget {
  const SectionBookDetails({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .29),
          child: CustomBookImage(
            imageUrl:
                bookModel.volumeInfo.imageLinks.thumbnail ?? AssetData.kLogo,
          ),
        ),
        SizedBox(height: 10),
        Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,

          "${bookModel.volumeInfo.title}",
          style: Style.textStyle18,
        ),
        SizedBox(height: 10),
        Text(
          textAlign: TextAlign.center,
          bookModel.volumeInfo.authors?.first ?? "No Author",
          style: Style.textStyle14.copyWith(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 13,
          ),
        ),
        SizedBox(height: 10),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: "(10)",
          rate: "200",
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomBookAction(),
        ),
      ],
    );
  }
}
