import 'package:bookly/Feature/home/presentaion/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class CustomBookAction extends StatelessWidget {
  const CustomBookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            text: "19.9 e",
            onPressed: () {},
            colorText: Colors.black,
            backgroundColor: Colors.white,
            RoundedRectangleBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
          ),
        ),
        Expanded(
          child: CustomTextButton(
            text: "Free preview",
            onPressed: () {},
            colorText: Colors.white,
            backgroundColor: Color(0xffEF8262),
            RoundedRectangleBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
