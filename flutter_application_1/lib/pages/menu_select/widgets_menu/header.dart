import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/case_buttons.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/logo.dart';

class Header extends StatelessWidget {
  Header({Key? key, required this.setPage}) : super(key: key);

  Function setPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Logo(),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          CaseButtonsHeader(
            text: "Home",
            index: 0,
            setPage: setPage,
          ),
          CaseButtonsHeader(
            text: "Projects",
            index: 1,
            setPage: setPage,
          ),
          CaseButtonsHeader(
            text: "Contate",
            index: 2,
            setPage: setPage,
          ),
        ],
      ),
    );
  }
}
