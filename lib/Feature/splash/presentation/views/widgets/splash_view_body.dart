import 'package:bookly/core/utils/asset.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetData.kLogo),
        SizedBox(height: 4),
        Text('Read Free Book', textAlign: TextAlign.center),
      ],
    );
  }
}
