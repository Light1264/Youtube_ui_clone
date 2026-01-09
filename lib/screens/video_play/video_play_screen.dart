import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/textwidget.dart';
import '../home/components/adverts_section.dart';

class VideoPlayScreen extends StatelessWidget {
  const VideoPlayScreen({
    super.key,
    required this.thumbnail,
    required this.profileImage,
    required this.title,
    required this.channelName,
    required this.noViews,
    required this.timePosted,
    required this.duration,
  });

  final String thumbnail;
  final String profileImage;
  final String title;
  final String channelName;
  final String noViews;
  final String timePosted;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔹 Gradient shadow overlay
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height /
                1.4, // adjust based on how deep the shadow should reach
            child: IgnorePointer(
              // ensures it doesn’t block touches
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.withOpacity(0.2), // strong at the top
                      Colors.blue.withOpacity(0.2), // mid fade

                      Colors.transparent, // fully gone at center
                    ],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.white,
                      child: Image.asset(
                        thumbnail,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: AppColor.whiteColor,
                                  size: 35,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.pause_circle,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    Icon(
                                      Icons.cast,
                                      color: AppColor.whiteColor,
                                    ),
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    Icon(
                                      Icons.closed_caption_off,
                                      color: AppColor.whiteColor,
                                    ),
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    Icon(
                                      Icons.settings_outlined,
                                      color: AppColor.whiteColor,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 2,
                                        height: 20,
                                        padding: EdgeInsets.all(0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Colors.grey,
                                        ),
                                      ),
                                      RotatedBox(
                                        quarterTurns: 90,
                                        child: Icon(
                                          Icons.play_arrow_rounded,
                                          size: 38,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.2),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    size: 60,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.2),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.play_arrow_rounded,
                                        size: 40,
                                        color: AppColor.whiteColor,
                                      ),
                                      Container(
                                        width: 2,
                                        height: 20,
                                        padding: EdgeInsets.all(0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: AppColor.whiteColor,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    children: [
                                      TextWidget(
                                        text: "00:15",
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.whiteColor,
                                      ),
                                      TextWidget(
                                        text: " / $duration",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.5),
                                  child: Icon(
                                    Icons.fullscreen,
                                    color: AppColor.whiteColor,
                                    size: 32,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.white30,
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 2,
                            decoration: BoxDecoration(
                              color: AppColor.primaryRColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: title,
                            color: AppColor.whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              TextWidget(
                                text: "@$channelName",
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              TextWidget(
                                text: noViews,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              TextWidget(
                                text: timePosted,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              TextWidget(
                                text: "...more",
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            height: 40,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  clipBehavior: Clip.hardEdge,
                                  padding: EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.inactiveColor,
                                  ),
                                  child: Image.asset(
                                    profileImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  // height: 50,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.notifications_none_rounded,
                                        color: AppColor.whiteColor,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: AppColor.whiteColor,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  // height: 50,
                                  padding: EdgeInsets.fromLTRB(16, 8, 16, 14),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.thumb_up_alt_outlined,
                                        color: AppColor.whiteColor,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 14,
                                      ),
                                      TextWidget(
                                        text: '300k',
                                        color: AppColor.whiteColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 15,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Icon(
                                        Icons.thumb_down_off_alt_rounded,
                                        color: AppColor.whiteColor,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  // height: 50,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  child: Icon(
                                    Icons.arrow_outward_outlined,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  // height: 50,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.bookmark_border_rounded,
                                        color: AppColor.whiteColor,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      TextWidget(
                                        text: 'Save',
                                        color: AppColor.whiteColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
                            margin: EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    TextWidget(
                                      text: "Comments",
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    TextWidget(
                                      text: "399",
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.blue[800],
                                      child: TextWidget(
                                        text: "A",
                                        color: AppColor.whiteColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: TextWidget(
                                        text:
                                            "You videos are always very explanatory and helpful. Thanks a lot for sharing",
                                        color: AppColor.whiteColor,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          AdvertsSection(
                            title:
                                "Ride with top-rated drivers | Bolt: \nRequest a Trip",
                            subtitle:
                                "Arrive in style, on time, every time. Get the Bolt app now!",
                            adType: "site",
                            adImage: "assets/coursera_ad_image.png",
                            adLogo: "assets/coursera_logo.png",
                            adColor: Color.fromARGB(255, 56, 53, 223),
                            adName: "Coursera",
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
