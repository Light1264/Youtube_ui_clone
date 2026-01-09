import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'textwidget.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.inactiveColor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TextWidget(
            text: text,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

