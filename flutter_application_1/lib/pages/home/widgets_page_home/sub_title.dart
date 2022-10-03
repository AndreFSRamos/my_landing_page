import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitlePage extends StatelessWidget {
  const SubTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Full Stack Developer Jr',
      style: GoogleFonts.roboto(
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
