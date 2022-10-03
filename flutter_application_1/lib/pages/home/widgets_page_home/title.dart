import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hi, I'am André Ramos",
      style: GoogleFonts.roboto(
        fontSize: 70,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
