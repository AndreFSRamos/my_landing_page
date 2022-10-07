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
        style: GoogleFonts.robotoMono(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppValues.treeColor,
          shadows: [
            BoxShadow(
              color: AppValues.primaryColor,
              spreadRadius: 1,
              blurRadius: 1,
              blurStyle: BlurStyle.outer,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
