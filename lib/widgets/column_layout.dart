import 'package:app_demo_ticket/utils/app_layout.dart';
import 'package:app_demo_ticket/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout({Key? key, 
    required this.alignment, 
    required this.firstText, 
    required this.secondText, 
    this.isColor
  }) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4)
      ],
    );
  }
}