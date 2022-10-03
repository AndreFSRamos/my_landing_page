// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:google_fonts/google_fonts.dart';

class ButtomFollowMe extends StatelessWidget {
  const ButtomFollowMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 250,
          height: 60,
          child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {
              html.window.open(
                  'https://www.linkedin.com/in/andr%C3%A9-ramos-763a4a139/',
                  'Perfil Linkedin');
            },
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset('images/icon_in.png'),
                  ),
                  Text(
                    'Follow me',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  const Icon(
                    Icons.navigate_next_rounded,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
