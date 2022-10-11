import 'package:flutter/material.dart';

class AppValues {
  //=================== S T R I N G S    S I S T E M A ====================================================================================================================

  //Text's page Home.
  static String logo = 'AR </>';
  static String titleHome = "Hi, I'am André Ramos";
  static String subTitleHome = "Full Stack Developer Jr";
  static String descriptionHome =
      'Se especializando em desenvolvimento de sofwares multiplataformas.';

  // Text's header.
  static String btHeaderPage01 = "Home";
  static String btHeaderPage02 = "About me";
  static String btHeaderPage03 = "Projects";
  static String btHeaderPage04 = "Contate";

  // Text's Page About me
  static String textAboutMe =
      ' " Desenvolvedor de software, atualmente se especializando em aplicação mobile e hibridas, costumo buscar uma visão geral dos projetos afim de entender as regras de negócios e também estou em constante aprendizado, buscando novas tecnologias. "';
  static String diretoryCv = "assets/doc/cv_andre_ramos.pdf";
  static String nameFileCv = "cv_andre_ramos";
  static String bottomDownloadCv = "Download CV";

  // Text page Contate
  static String textButtomSendEmail = "Enviar email";
  static String textHintEmail = "Informe seu email.";
  static String textHintSubject = "Informe o assunto do email.";

  //Link and Description Buttom Follow me.
  static String linkBtFollowMe =
      "https://www.linkedin.com/in/andr%C3%A9-ramos-763a4a139/";
  static String descriptionLinkBtFollowMe = "Perfil Linkedin";
  static String btFollowMe = "Follow me";

  //Link Buttom Whatsapp
  static String linkBtWhatsapp = "https://wa.me/5541992530774";
  static String descriptionLinkBtWhatsapp = "Link para o meu contato whatssapp";

  //path assets.
  static String imageBackground = "images/florestVetorBlack.jpg";
  static String imagePerfil = "images/perfil6.png";
  static String imageAboutMe = "images/eu2.png";
  static String iconIn = "images/icon_in.png";
  static String iconGitHub = "images/icon_gitHub.png";
  static String iconFacebook = "images/icon_facebook.png";
  static String iconInstagram = "images/icon_instagram.png";

  // My informations to contate
  static String myPhoneNumber = "(41) 9 9253-0774";
  static String myEmail = "andre.sis.tec@hotmail.com";
  static String linkGitHub = "https://github.com/AndreFSRamos";
  static String linkFacebook = "https://www.facebook.com/andre.felipe.902819";
  static String descriptionLinkGitHUb = "Perfil GitHub";
  static String descriptionLinkBFacebook = "Perfil Facebook";
  static String descriptionLinkInstagram = "Perfil Instagram";

  //============== C O N T R O L L E R ' S ====================================================================================================================================

  static int durationTransition = 500;
  static ValueNotifier<int> pageSelect = ValueNotifier(0);
  static setPageSelect(int page) {
    pageSelect.value = page;
  }

  // =========================== C O L O R S     S I S T E M A ===============================================================================================================

  static Color primaryColor = const Color.fromARGB(255, 243, 86, 86);
  static Color secondColor = const Color.fromARGB(246, 27, 27, 27);
  static Color background = const Color.fromARGB(246, 27, 27, 27);
  static Color treeColor = const Color.fromARGB(255, 255, 255, 255);

// ======================= F O N T ' S     G O O G L E =======================================================================================================================
}
