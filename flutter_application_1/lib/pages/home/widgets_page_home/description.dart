import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        AppValues.descriptionHome,
        style: GoogleFonts.gruppo(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: AppValues.treeColor,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
