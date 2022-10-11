import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../useful/app_strings.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        AppValues.descriptionHome,
        style: GoogleFonts.robotoMono(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppValues.treeColor,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
