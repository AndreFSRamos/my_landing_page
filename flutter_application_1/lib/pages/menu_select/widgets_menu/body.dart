import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about/about_me.dart';
import '../../contate/contate.dart';
import '../../home/home.dart';
import '../../projects/projects.dart';

class BodyHome extends StatelessWidget {
  BodyHome({Key? key, required this.scrollController, required this.pages})
      : super(key: key);

  final ScrollController scrollController;
  final List<GlobalKey> pages;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Home(index: pages[0]),
          AboutMe(
            index: pages[1],
          ),
          Projects(
            index: pages[2],
          ),
          Contate(
            index: pages[3],
          ),
        ],
      ),
    );

    /*Flexible(
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
    );*/
  }
}
