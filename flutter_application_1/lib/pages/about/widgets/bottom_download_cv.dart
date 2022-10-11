// ignore_for_file: deprecated_member_use, avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../useful/app_strings.dart';

class ButtomDownloadCV extends StatelessWidget {
  const ButtomDownloadCV({Key? key}) : super(key: key);

  _downloadFile(url) {
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download = AppValues.nameFileCv;
    anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 60,
      child: RaisedButton(
        onPressed: () => _downloadFile(AppValues.diretoryCv),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              AppValues.bottomDownloadCv,
              style: GoogleFonts.robotoMono(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppValues.treeColor,
              ),
            ),
            Icon(
              Icons.cloud_download_rounded,
              color: AppValues.treeColor,
              size: 30,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.grey[800],
        hoverColor: AppValues.primaryColor,
        elevation: 8,
      ),
    );
  }
}
