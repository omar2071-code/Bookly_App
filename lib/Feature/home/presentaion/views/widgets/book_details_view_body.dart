import 'package:bookly/Feature/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_book_action.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/list_view_book_detail_builder.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarBookDetailsView(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .29),
            child: CustomBookImage(),
          ),
          SizedBox(height: 20),
          Center(child: Text('The Jungle Book', style: Style.textStyle18)),
          SizedBox(height: 10),
          Center(
            child: Text(
              'Rudyard Kipling',
              style: Style.textStyle14.copyWith(
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
                fontSize: 13,
              ),
            ),
          ),
          SizedBox(height: 10),
          BookRating(mainAxisAlignment: MainAxisAlignment.center),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomBookAction(),
          ),
          SizedBox(height: 37),
          Text('You can also like', style: Style.textStyle14),
          SizedBox(height: 10),
          ListviewBookDetailsBuilder(),
        ],
      ),
    );
  }
}
