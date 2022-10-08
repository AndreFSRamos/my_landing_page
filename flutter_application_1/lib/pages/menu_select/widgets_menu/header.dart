// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/case_buttons.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/logo.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  Header({Key? key, required this.setPage}) : super(key: key);

  Function setPage;
  @override
  Widget build(BuildContext context) {
    _caseText(String text) {
      return Text(
        text,
        style: GoogleFonts.roboto(fontSize: 20, color: AppValues.treeColor),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Expanded(
          child: Logo(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.8,
          child: TabBar(
            tabs: [
              _caseText('Home'),
              _caseText('About me'),
              _caseText('Projects'),
              _caseText('Contate')
            ],
            indicatorColor: AppValues.primaryColor,
            onTap: (int index) {
              setPage(index);
            },
          ),
        )
      ],
    );

    /*Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Logo(),
          CaseButtonsHeader(
            text: AppValues.btHeaderPage01,
            index: 0,
            setPage: setPage,
          ),
          CaseButtonsHeader(
            text: AppValues.btHeaderPage02,
            index: 1,
            setPage: setPage,
          ),
          CaseButtonsHeader(
            text: AppValues.btHeaderPage03,
            index: 2,
            setPage: setPage,
          ),
          CaseButtonsHeader(
            text: AppValues.btHeaderPage04,
            index: 3,
            setPage: setPage,
          ),
        ],
      ),
    );*/
  }
}
