import 'package:flutter/material.dart';
import '../../useful/app_strings.dart';

class AvatarAnimation extends StatelessWidget {
  const AvatarAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppValues.imagePerfil), fit: BoxFit.contain),
      ),
    );
  }
}
