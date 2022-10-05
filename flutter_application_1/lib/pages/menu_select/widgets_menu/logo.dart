import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppValues.logo,
      style: GoogleFonts.rubikGlitch(
          fontSize: 60,
          color: const Color.fromARGB(255, 243, 86, 86),
          shadows: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ]),
    );
  }
}
