import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key, required this.index}) : super(key: key);
  final GlobalKey index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: index,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.topLeft,
                begin: Alignment.bottomRight,
                colors: [
                  Colors.grey,
                  AppValues.secondColor,
                ],
                stops: const [0.3, 0.3],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomLeft,
                begin: Alignment.topRight,
                colors: [AppValues.primaryColor, AppValues.secondColor],
                stops: const [0.1, 0.1],
              ),
            ),
          ),
          const Center(
            child: Text('tela 02'),
          ),
        ],
      ),
    );
  }
}
