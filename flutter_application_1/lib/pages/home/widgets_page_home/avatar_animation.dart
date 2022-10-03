import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class AvatarAnimation extends StatelessWidget {
  const AvatarAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        child: const RiveAnimation.asset(
          'images/perfilAnimado2.riv',
          animations: [
            'icon_java',
            'icon_dart',
            'icon_flutter',
            'icon_firebase',
            'icon_mysql',
            'icon_oracle'
          ],
        ),
      ),
    );
  }
}
