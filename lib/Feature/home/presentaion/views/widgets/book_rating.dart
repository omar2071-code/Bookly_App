import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 6.3),
        Text("4.5", style: Style.textStyle18),
        SizedBox(width: 5),
        Text("(1456)", style: Style.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
