import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/contate/widgets/base_page.dart';
import 'package:flutter_application_1/pages/contate/widgets/bt_whatsapp.dart';
import 'package:flutter_application_1/pages/contate/widgets/form_email.dart';
import 'package:rive/rive.dart';

class Contate extends StatelessWidget {
  const Contate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Stack(
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          /* child: const RiveAnimation.asset(
                            'images/perfilAnimado2.riv',
                            animations: [
                              'icon_java',
                              'icon_dart',
                              'icon_flutter',
                              'icon_firebase',
                              'icon_mysql',
                              'icon_oracle'
                            ],
                          ),*/
                        )
                      ],
                    ),
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
    );
  }
}
