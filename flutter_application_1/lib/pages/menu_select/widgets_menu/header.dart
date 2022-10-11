// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/logo.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../useful/app_strings.dart';

class Header extends StatelessWidget {
  Header({Key? key, required this.scrollPage}) : super(key: key);

  Function scrollPage;
  @override
  Widget build(BuildContext context) {
    _caseText(String text) {
      return Text(
        text,
        style: GoogleFonts.roboto(
            fontSize: 20,
            color: AppValues.treeColor,
            fontWeight: FontWeight.bold),
      );
    }

    return Row(
      children: [
        const Expanded(
          child: Logo(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.6,
          child: TabBar(
            tabs: [
              _caseText('Home'),
              _caseText('About me'),
              _caseText('Skills'),
              _caseText('Qualifications'),
              _caseText('Projects'),
              _caseText('Contate')
            ],
            indicatorColor: AppValues.primaryColor,
            indicatorWeight: 6,
            onTap: (int index) {
              scrollPage(index);
            },
          ),
        )
      ],
    );
  }
}
