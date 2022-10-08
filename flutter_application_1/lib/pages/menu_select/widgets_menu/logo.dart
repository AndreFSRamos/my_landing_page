import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppValues.logo,
      style: GoogleFonts.monoton(
        fontSize: MediaQuery.of(context).size.height * 0.04,
        color: AppValues.primaryColor,
      ),
    );
  }
}
