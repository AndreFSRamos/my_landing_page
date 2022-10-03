// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseButtonsHeader extends StatelessWidget {
  CaseButtonsHeader(
      {Key? key,
      required this.text,
      required this.index,
      required this.setPage})
      : super(key: key);

  final String text;
  final int index;
  Function setPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            setPage(index);
          },
          child: Text(
            text,
            style: GoogleFonts.rubikGlitch(
              fontSize: 26,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
