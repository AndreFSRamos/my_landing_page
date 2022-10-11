import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../useful/app_strings.dart';

class SubTitlePage extends StatelessWidget {
  const SubTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppValues.subTitleHome,
      textAlign: TextAlign.justify,
      style: GoogleFonts.roboto(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: AppValues.treeColor,
      ),
    );
  }
}
