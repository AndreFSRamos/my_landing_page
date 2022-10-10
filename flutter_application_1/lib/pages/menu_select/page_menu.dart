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

        Offset position = box.localToGlobal(Offset.zero);

        if (_scrollController.offset >= position.dy) {
          DefaultTabController.of(tabContext!)!.animateTo(i,
              duration: const Duration(milliseconds: 100), curve: Curves.ease);
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
  }
}
