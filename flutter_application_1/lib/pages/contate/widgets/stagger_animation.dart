import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/useful/app_strings.dart';

class StaggerAnimation extends StatelessWidget {
  StaggerAnimation({Key? key, required this.controller})
      : buttomSqueeze = Tween(begin: 320.0, end: 60.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.150),
          ),
        ),
        super(key: key);

  final AnimationController controller;
  final Animation<double> buttomSqueeze;

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: InkWell(
        onTap: () async {
          // await controller.forward();

          // await controller.reverse();
        },
        child: Container(
          width: buttomSqueeze.value,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppValues.primaryColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: AppValues.treeColor, blurRadius: 1, spreadRadius: 2),
            ],
          ),
          child: _buildInside(context),
        ),
      ),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (buttomSqueeze.value > 75) {
      return Text(
        AppValues.textButtomSendEmail,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      );
    } else {
      return Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(AppValues.treeColor),
          strokeWidth: 3,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }
}
