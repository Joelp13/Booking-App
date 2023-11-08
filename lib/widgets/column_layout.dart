import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3.copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 5,
        ),
        Text(secondText,
            style: Styles.headLineStyle4.copyWith(color: Colors.grey))
      ],
    );
  }
}
