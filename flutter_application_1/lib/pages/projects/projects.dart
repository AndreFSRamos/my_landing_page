import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
        /* image: DecorationImage(
                image: Image.asset(AppValues.imageBackground).image,
                fit: BoxFit.cover),*/
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Colors.grey,
            Colors.black,
          ],
        ),
      ),*/

      color: Colors.black,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Center(child: Text('tela 02')),
    );
  }
}
