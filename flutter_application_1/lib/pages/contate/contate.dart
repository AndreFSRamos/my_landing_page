import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/contate/widgets/base_page.dart';
import 'package:flutter_application_1/pages/contate/widgets/bt_whatsapp.dart';

import '../../useful/app_strings.dart';

class Contate extends StatelessWidget {
  const Contate({Key? key, required this.index}) : super(key: key);
  final GlobalKey index;
  @override
  Widget build(BuildContext context) {
    return Center(
      key: index,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppValues.secondColor,
                    AppValues.primaryColor,
                  ],
                  stops: const [
                    0.5,
                    0.5,
                  ],
                ),
              ),
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                    ),
                    const BasePage(),
                  ],
                ),
              ],
            ),
            const ButtomWhatsapp(),
          ],
          alignment: Alignment.bottomRight,
        ),
      ),
    );
  }
}
