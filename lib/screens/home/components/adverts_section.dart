import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/utils/colors.dart';
import 'package:youtube_ui_clone/widgets/app_botton.dart';
import 'package:youtube_ui_clone/widgets/textwidget.dart';

class AdvertsSection extends StatelessWidget {
  const AdvertsSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.adType,
    required this.adLogo,
    required this.adImage,
    required this.adColor,
    required this.adName,
  });

  final String title;
  final String subtitle;
  final String adType;
  final String adLogo;
  final String adImage;
  final Color adColor;
  final String adName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.white.withOpacity(0.1),
              child: Image.asset(adImage),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: CircleAvatar(
                backgroundColor: AppColor.primaryBColor.withOpacity(0.5),
                radius: 25,
                child: Icon(
                  Icons.arrow_outward_rounded,
                  color: AppColor.whiteColor,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    clipBehavior: Clip.hardEdge,
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      borderRadius: adType == "App"
                          ? BorderRadius.circular(8)
                          : BorderRadius.circular(20),
                      color: adColor,
                    ),
                    child: Image.asset(
                      adLogo,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: title,
                          color: AppColor.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        TextWidget(
                          text: subtitle,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: "Sponsored",
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            CircleAvatar(
                              radius: 1,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            TextWidget(
                              text: adName,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: AppColor.whiteColor,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              adType == "App"
                  ? Row(
                      children: [
                        Expanded(
                          child: AppPrimaryButton(
                            buttonText: "Watch",
                            onPressed: () {},
                            textColor: AppColor.whiteColor,
                            buttonColor: AppColor.inactiveColor,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: AppPrimaryButton(
                            buttonText: "Open app",
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )
                  : AppPrimaryButton(
                      buttonText: "Visit site",
                      onPressed: () {},
                    )
            ],
          ),
        )
      ],
    );
  }
}
