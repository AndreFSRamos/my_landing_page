// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/avatar_animation.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/description.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/sub_title.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/title.dart';
import '../useful/app_strings.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.index}) : super(key: key);
  final GlobalKey index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: index,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppValues.secondColor, AppValues.primaryColor],
                stops: const [0.9, 0.2],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  //const AvatarAnimation(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  const TitlePage(),
                  const SubTitlePage(),
                  const DescriptionPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
