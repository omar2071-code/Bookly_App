import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (data) {
        print(data.toString());
      },
      decoration: InputDecoration(
        border: OutLineBorder(),
        enabledBorder: OutLineBorder(),
        focusedBorder: OutLineBorder(),
        suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
      ),
    );
  }

  OutlineInputBorder OutLineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
