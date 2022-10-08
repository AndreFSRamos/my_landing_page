// ignore_for_file: deprecated_member_use, avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/body.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/header.dart';
import 'package:flutter_application_1/pages/menu_select/widgets_menu/logo.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

import '../about/about_me.dart';
import '../contate/contate.dart';
import '../home/home.dart';
import '../projects/projects.dart';

class PageMenu extends StatefulWidget {
  const PageMenu({Key? key}) : super(key: key);

  @override
  State<PageMenu> createState() => _PageMenu();
}

class _PageMenu extends State<PageMenu> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  BuildContext? tabContext;
  final List<GlobalKey> pages = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey()
  ];

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_changeTabs);
    super.initState();
  }

  _changeTabs() {
    setState(() {
      late RenderBox box;
      for (var i = 0; i < pages.length; i++) {
        box = pages[i].currentContext!.findRenderObject() as RenderBox;
        print('test2');
        Offset position = box.localToGlobal(Offset.zero);

        if (_scrollController.offset >= position.dy) {
          DefaultTabController.of(tabContext!)!.animateTo(i,
              duration: const Duration(milliseconds: 100), curve: Curves.ease);
          print('teste');
        }
      }
    });
  }

  _scrollContextPage(int index) async {
    _scrollController.removeListener(_changeTabs);
    final page = pages[index].currentContext!;
    await Scrollable.ensureVisible(page,
        duration: Duration(milliseconds: AppValues.durationTransition),
        curve: Curves.ease);
    _scrollController.addListener(_changeTabs);
  }

  _caseText(String text) {
    return Text(
      text,
      style: GoogleFonts.roboto(fontSize: 20, color: AppValues.treeColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Builder(
        builder: (context) {
          tabContext = context;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppValues.secondColor,
              title: Header(
                setPage: _scrollContextPage,
              ),
            ),
            body: BodyHome(scrollController: _scrollController, pages: pages),
          );
        },
      ),
    );
    /*return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              elevation: 0,
              snap: true,
              backgroundColor: AppValues.secondColor,
              toolbarHeight: MediaQuery.of(context).size.height * 0.09,
              flexibleSpace: FlexibleSpaceBar(
                title: Header(setPage: _setPage),
                centerTitle: true,
              ),
            ),
            BodyHome(controllerPage: controllerPage)
          ],
        ),
      ),
    );*/
  }
}
