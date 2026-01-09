import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/widgets/textwidget.dart';

import '../../../utils/colors.dart';

List<Map<String, dynamic>> shorts = [
  {
    "thumbnail": "assets/shorts_thumbnail.png",
    "title": "A day in the life of a software developer",
    "isNew": true,
  },
  {
    "thumbnail": "assets/shorts_thumbnail2.png",
    "title": "What's new",
    "isNew": false,
  },
  {
    "thumbnail": "assets/shorts_thumbnail3.png",
    "title": "3 Habits for a balances life",
    "isNew": true,
  },
];

class ShortsSection extends StatelessWidget {
  const ShortsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              "assets/shorts_icons.png",
              scale: 8,
            ),
            Text(
              "Shorts",
              style: TextStyle(
                fontSize: 24,
                letterSpacing: -1.5,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 290,
            child: ListView.builder(
              itemCount: shorts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Stack(
                    children: [
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(
                              shorts[index]["thumbnail"],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      shorts[index]["isNew"]
                          ? Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                decoration: BoxDecoration(
                                  color: AppColor.whiteColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: TextWidget(
                                  text: "New",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : const SizedBox(),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        left: 8,
                        child: TextWidget(
                          text: shorts[index]["title"],
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        )
      ],
    );
  }
}
