import 'package:flutter/material.dart';

import '../useful/app_strings.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topLeft,
              begin: Alignment.bottomRight,
              colors: [
                Colors.grey,
                AppValues.secondColor,
              ],
              stops: const [0.3, 0.3],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomLeft,
              begin: Alignment.topRight,
              colors: [AppValues.primaryColor, AppValues.secondColor],
              stops: const [0.1, 0.1],
            ),
          ),
        ),
        const Center(
          child: Text('tela 02'),
        ),
      ],
    );
  }
}
