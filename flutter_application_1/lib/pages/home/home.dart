// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/avatar_animation.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/description.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/sub_title.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/title.dart';
import '../useful/app_strings.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset(AppValues.imageBackground).image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  const AvatarAnimation(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  const TitlePage(),
                  const SubTitlePage(),
                  const DescriptionPage(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
