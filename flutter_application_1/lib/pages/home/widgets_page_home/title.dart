import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppValues.titleHome,
      style: GoogleFonts.roboto(
        fontSize: 70,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
