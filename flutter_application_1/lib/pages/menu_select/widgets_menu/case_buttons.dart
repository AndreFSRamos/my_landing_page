// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
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
        ValueListenableBuilder(
          valueListenable: AppValues.pageSelect,
          builder: (context, int pageSelect, _) => Container(
            height: 40,
            width: 180,
            decoration: const BoxDecoration(),
            child: RaisedButton(
              onPressed: () {
                setPage(index);
                AppValues.setPageSelect(index);
              },
              color: pageSelect == index
                  ? AppValues.primaryColor
                  : AppValues.secondColor,
              hoverColor: AppValues.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                text,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppValues.treeColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
