import 'package:flutter/material.dart';
import '../../useful/app_strings.dart';

class AvatarAnimation extends StatelessWidget {
  const AvatarAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(150),
        image: DecorationImage(
            image: AssetImage(AppValues.imagePerfil), fit: BoxFit.contain),
        boxShadow: [
          BoxShadow(
              color: AppValues.secondColor,
              spreadRadius: -15,
              blurRadius: 10,
              blurStyle: BlurStyle.solid,
              offset: const Offset(0, 40)),
        ],
      ),
    );
  }
}
