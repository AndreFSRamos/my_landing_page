import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppValues.titleHome,
      textAlign: TextAlign.center,
      style: GoogleFonts.kronaOne(
        fontSize: 60,
        //fontWeight: FontWeight.w600,
        color: AppValues.primaryColor,
        shadows: [
          BoxShadow(
            color: AppValues.secondColor,
            spreadRadius: 1,
            blurRadius: 1,
            blurStyle: BlurStyle.outer,
            offset: const Offset(1, 1),
          ),
        ],
      ),
    );
  }
}
