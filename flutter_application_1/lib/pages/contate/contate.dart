import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/contate/widgets/base_page.dart';
import 'package:flutter_application_1/pages/contate/widgets/bt_whatsapp.dart';
import 'package:flutter_application_1/pages/contate/widgets/form_email.dart';

class Contate extends StatelessWidget {
  const Contate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: const FormEmail(),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                          )
                        ],
                      ),
                    ),
                    const BasePage(),
                  ],
                ),
              ],
            ),
          ),
          const ButtomWhatsapp(),
        ],
        alignment: Alignment.bottomRight,
      ),
    );
  }
}
