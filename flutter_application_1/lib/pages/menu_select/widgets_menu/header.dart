// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/case_buttons.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/logo.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';

class Header extends StatelessWidget {
  Header({Key? key, required this.setPage}) : super(key: key);

  Function setPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Logo(),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
        ),
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
      ],
    );
  }
}
