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
        Container(
          height: 40,
          width: 180,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, 2), // changes position of shadow
            )
          ]),
          child: RaisedButton(
            onPressed: () {
              setPage(index);
            },
            color: const Color.fromARGB(255, 36, 36, 36),
            hoverColor: const Color.fromARGB(255, 243, 86, 86),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Text(
              text,
              style: GoogleFonts.rubikGlitch(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
