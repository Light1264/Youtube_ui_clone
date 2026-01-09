import 'package:flutter/material.dart';
import '../utils/colors.dart';

PreferredSizeWidget homeAppBar() {
  return AppBar(
    title: Row(
      children: [
        Image.asset(
          "assets/youtube_logo1.png",
          scale: 4,
        ),
        Text(
          "YouTube",
          style: TextStyle(
            fontSize: 24,
            letterSpacing: -1.5,
            color: AppColor.whiteColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
    actions: [
      Icon(
        Icons.cast,
        color: AppColor.whiteColor,
        size: 30,
      ),
      const SizedBox(
        width: 16,
      ),
      Icon(
        Icons.notifications_outlined,
        color: AppColor.whiteColor,
        size: 30,
      ),
      const SizedBox(
        width: 16,
      ),
      Icon(
        Icons.search,
        color: AppColor.whiteColor,
        size: 30,
      ),
      const SizedBox(
        width: 8,
      ),
    ],
  );
}
