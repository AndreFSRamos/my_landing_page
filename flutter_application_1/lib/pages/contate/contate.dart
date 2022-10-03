import 'package:flutter/material.dart';

class Contate extends StatelessWidget {
  const Contate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        //   color: Colors.green,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Text('tela 03'),
      ),
    );
  }
}
