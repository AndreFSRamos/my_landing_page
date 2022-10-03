// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/avatar_animation.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/bt_follow_me.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/description.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/sub_title.dart';
import 'package:flutter_application_1/pages/home/widgets_page_home/title.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.55,
          padding: const EdgeInsets.only(left: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
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
        const AvatarAnimation(),
      ],
    );
  }
}
