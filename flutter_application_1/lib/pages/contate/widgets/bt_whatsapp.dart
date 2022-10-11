// ignore_for_file: avoid_web_libraries_in_flutter, deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:html' as html;
import '../../../useful/app_strings.dart';

class ButtomWhatsapp extends StatelessWidget {
  const ButtomWhatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, bottom: 55),
      child: SizedBox(
        height: 80,
        width: 80,
        child: RaisedButton(
          onPressed: () {
            html.window.open(
                AppValues.linkBtWhatsapp, AppValues.descriptionLinkBtWhatsapp);
          },
          color: Colors.greenAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.whatsapp,
            size: 46,
          ),
        ),
      ),
    );
  }
}
