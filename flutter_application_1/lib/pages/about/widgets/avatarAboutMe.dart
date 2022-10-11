import 'package:flutter/material.dart';
import '../../../useful/app_strings.dart';

class AvatarAboutMe extends StatelessWidget {
  const AvatarAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      // width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          image: DecorationImage(
            image: AssetImage(AppValues.imageAboutMe),
            fit: BoxFit.contain,
          ),
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius: 40, spreadRadius: -30)
          ]),
    );
  }
}
