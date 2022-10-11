import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about/about_me.dart';
import 'package:flutter_application_1/pages/skills/skills.dart';
import '../../contate/contate.dart';
import '../../home/home.dart';
import '../../projects/projects.dart';
import '../../qualifications/qualifications.dart';

class BodyHome extends StatelessWidget {
  const BodyHome(
      {Key? key, required this.scrollController, required this.pages})
      : super(key: key);

  final ScrollController scrollController;
  final List<GlobalKey> pages;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          Home(index: pages[0]),
          AboutMe(index: pages[1]),
          PageSkills(index: pages[2]),
          Qualifications(index: pages[3]),
          Projects(index: pages[4]),
          Contate(index: pages[5]),
        ],
      ),
    );
  }
}
