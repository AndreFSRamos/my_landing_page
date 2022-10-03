import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        '"Desenvolvedor de software, atualmente se especializando em aplicações multiplataformas. Sempre costumo buscar uma visão geral dos projetos afim de entender as regras de negócios e suas necessidades. Também estou em constante aprendizado, buscando novas tecnologias. "',
        style: GoogleFonts.gruppo(
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
