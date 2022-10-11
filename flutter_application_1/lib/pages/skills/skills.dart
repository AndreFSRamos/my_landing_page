import 'package:flutter/material.dart';

import '../../useful/app_strings.dart';

class PageSkills extends StatelessWidget {
  const PageSkills({Key? key, required this.index}) : super(key: key);
  final GlobalKey index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: index,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
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
                stops: const [0.5, 0.5],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomLeft,
                begin: Alignment.topRight,
                colors: [
                  AppValues.secondColor,
                  AppValues.secondColor,
                ],
                stops: const [0.1, 0.1],
              ),
            ),
          ),
          const Center(
            child: Text(
              'Habilidades',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
