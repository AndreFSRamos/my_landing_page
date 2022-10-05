// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
import 'dart:html' as html;

class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      height: MediaQuery.of(context).size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(right: 150, left: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _email(),
                const SizedBox(height: 10),
                _phoneNumber(),
              ],
            ),
            _iconSocialNetworks(),
          ],
        ),
      ),
    );
  }

  Widget _phoneNumber() {
    return Row(
      children: [
        const Icon(
          Icons.phone_enabled_sharp,
          color: Colors.white70,
          size: 30,
        ),
        const SizedBox(width: 10),
        Text(
          AppValues.myPhoneNumber,
          style: const TextStyle(color: Colors.white70, fontSize: 20),
        ),
      ],
    );
  }

  Widget _email() {
    return Row(
      children: [
        const Icon(
          Icons.email_outlined,
          color: Colors.white70,
          size: 30,
        ),
        const SizedBox(width: 10),
        Text(
          AppValues.myEmail,
          style: const TextStyle(color: Colors.white70, fontSize: 20),
        ),
      ],
    );
  }

  Widget _iconSocialNetworks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _caseIcons(AppValues.iconGitHub, AppValues.linkGitHub,
            AppValues.descriptionLinkGitHUb),
        const SizedBox(width: 20),
        _caseIcons(AppValues.iconFacebook, AppValues.linkFacebook,
            AppValues.descriptionLinkBFacebook),
        const SizedBox(width: 20),
        _caseIcons(AppValues.iconInstagram, AppValues.linkBtFollowMe,
            AppValues.descriptionLinkInstagram),
        const SizedBox(width: 20),
        _caseIcons(AppValues.iconIn, AppValues.linkBtFollowMe,
            AppValues.descriptionLinkBtFollowMe),
      ],
    );
  }

  Widget _caseIcons(String pathIcon, String link, String description) {
    return GestureDetector(
      onTap: () {
        html.window.open(link, description);
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          image:
              DecorationImage(image: AssetImage(pathIcon), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
