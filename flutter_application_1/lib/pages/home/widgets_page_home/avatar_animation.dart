import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../useful/app_strings.dart';

class AvatarAnimation extends StatelessWidget {
  const AvatarAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        image: DecorationImage(
            image: AssetImage(AppValues.imagePerfil), fit: BoxFit.contain),
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
