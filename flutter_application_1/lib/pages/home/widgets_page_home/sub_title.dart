import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitlePage extends StatelessWidget {
  const SubTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppValues.subTitleHome,
      style: GoogleFonts.roboto(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        color: AppValues.treeColor,
        shadows: [
          BoxShadow(
            color: AppValues.secondColor,
            spreadRadius: 5,
            blurRadius: 5,
            blurStyle: BlurStyle.solid,
            offset: const Offset(0, 0),
          ),
        ],
      ),
    );
  }
}
