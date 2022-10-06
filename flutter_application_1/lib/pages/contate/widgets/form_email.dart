// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/contate/widgets/stagger_animation.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';

class FormEmail extends StatelessWidget {
  const FormEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(height: 10),
            StaggerAnimation(
              controller: AppValues.getAnimation(),
            ),
          ],
        ),
      ),
    );
  }
}
