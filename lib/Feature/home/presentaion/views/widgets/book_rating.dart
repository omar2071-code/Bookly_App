import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.count,
    required this.rate,
  });
  final MainAxisAlignment mainAxisAlignment;
  final String count;
  final String rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 6.3),
        Text(count, style: Style.textStyle18),
        SizedBox(width: 5),
        Text(rate, style: Style.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
