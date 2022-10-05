// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/avatar_animation.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/bt_follow_me.dart';
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
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(height: 30),
                // AvatarAnimation(),
                TitlePage(),
                SizedBox(height: 5),
                SubTitlePage(),
                SizedBox(height: 30),
                DescriptionPage(),
                SizedBox(height: 50),
                ButtomFollowMe(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
