// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import '../../../useful/app_strings.dart';

class FormEmail extends StatelessWidget {
  const FormEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppValues.treeColor),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: AppValues.textHintEmail,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppValues.treeColor),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: AppValues.textHintSubject,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppValues.treeColor),
            child: TextFormField(
              maxLines: 15,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          /* StaggerAnimation(
            controller: AppValues.getAnimation(),
          ),*/
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
