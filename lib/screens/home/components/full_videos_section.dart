import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/screens/video_play/video_play_screen.dart';

import '../../../utils/colors.dart';
import '../../../widgets/textwidget.dart';

class FullVideosSection extends StatelessWidget {
  const FullVideosSection({
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
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VideoPlayScreen(
                thumbnail: thumbnail,
                profileImage: profileImage,
                title: title,
                channelName: channelName,
                noViews: noViews,
                timePosted: timePosted,
                duration: duration,
              )),
            );
          },
          child: Stack(
            children: [
              Container(
                height: 230,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset(
                  thumbnail,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextWidget(
                    text: duration,
                    fontWeight: FontWeight.bold,
                    color: AppColor.whiteColor,
                  ),
                ),
              )
            ],
          ),
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
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: channelName,
                              color: Colors.grey,
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
                              text: noViews,
                              color: Colors.grey,
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
                              text: timePosted,
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
            ],
          ),
        )
      ],
    );
  }
}
