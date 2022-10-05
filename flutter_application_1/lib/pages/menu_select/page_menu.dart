// ignore_for_file: deprecated_member_use, avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/body.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/header.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';

class PageMenu extends StatefulWidget {
  const PageMenu({Key? key}) : super(key: key);

  @override
  State<PageMenu> createState() => _PageMenu();
}

class _PageMenu extends State<PageMenu> {
  int pageInicial = AppValues.intialPageIndex;
  late PageController controllerPage;

  _setPage(int indexPage) {
    setState(() {
      controllerPage.animateToPage(indexPage,
          duration: Duration(milliseconds: AppValues.durationTransition),
          curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    controllerPage = PageController(initialPage: pageInicial);
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              BodyHome(controllerPage: controllerPage),
            ],
          ),
          SizedBox(
            height: 90,
            child: Header(
              setPage: _setPage,
            ),
          )
        ],
      ),
    );
  }
}
