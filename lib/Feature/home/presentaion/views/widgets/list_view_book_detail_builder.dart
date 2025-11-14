import 'package:bookly/Feature/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class ListviewBookDetailsBuilder extends StatelessWidget {
  const ListviewBookDetailsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => SizedBox(
              width: width * .2,
              height: height * .17,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: CustomBookImage(
                  imageUrl:
                      'https://books.google.com/books/content?id=FxMSp72ZghkC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
                ),
              ),
            ),
      ),
    );
  }
}
