import 'package:app_demo_ticket/utils/app_layout.dart';
import 'package:app_demo_ticket/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(5))
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF)),
          Gap(AppLayout.getHeight(25)),
          Text(text, style: Styles.textStyle)
        ],
      ),
    );
  }
}