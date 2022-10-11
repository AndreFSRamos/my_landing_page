import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../useful/app_strings.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppValues.titleHome,
      textAlign: TextAlign.center,
      style: GoogleFonts.kronaOne(
        fontSize: 60,
        color: AppValues.primaryColor,
      ),
    );
  }
}
