import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/list_view_book_detail_builder.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/section_book_details.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarBookDetailsView(),
          SectionBookDetails(bookModel: bookModel),
          SizedBox(height: 10),
          Text('You can also like', style: Style.textStyle18),
          SizedBox(height: 10),
          ListviewBookDetailsBuilder(),
        ],
      ),
    );
  }
}
