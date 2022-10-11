// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about/widgets/avatarAboutMe.dart';
import 'package:flutter_application_1/pages/about/widgets/bottom_download_cv.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../useful/app_strings.dart';
import '../home/widgets_page_home/avatar_animation.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key, required this.index}) : super(key: key);
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
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: const AvatarAboutMe(),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppValues.textAboutMe,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppValues.treeColor,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        const ButtomDownloadCV(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
