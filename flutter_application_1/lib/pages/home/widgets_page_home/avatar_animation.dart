import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
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
            spreadRadius: 0,
            blurRadius: 0,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),

      /*child: const RiveAnimation.asset(
        'images/perfilAnimado2.riv',
        animations: [
          'icon_java',
          'icon_dart',
          'icon_flutter',
          'icon_firebase',
          'icon_mysql',
          'icon_oracle'
        ],
      ),*/
    );
  }
}
