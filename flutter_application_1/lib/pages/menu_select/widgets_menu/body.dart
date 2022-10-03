import 'package:flutter/material.dart';
import '../../contate/contate.dart';
import '../../home/home.dart';
import '../../projects/projects.dart';

class BodyHome extends StatelessWidget {
  BodyHome({Key? key, required this.controllerPage}) : super(key: key);

  final PageController controllerPage;
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: PageView(
        scrollBehavior: const ScrollBehavior(),
        controller: controllerPage,
        pageSnapping: false,
        scrollDirection: Axis.vertical,
        children: const [
          Home(),
          Projects(),
          Contate(),
        ],
      ),
    );
  }
}
