import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/screens/home/components/adverts_section.dart';
import 'package:youtube_ui_clone/screens/home/components/full_videos_section.dart';
import 'package:youtube_ui_clone/screens/home/components/shorts_section.dart';

class TabbarAllView extends StatelessWidget {
  const TabbarAllView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdvertsSection(
          title: "Ride with top-rated drivers | Bolt: \nRequest a Trip",
          subtitle:
              "Arrive in style, on time, every time. Get the Bolt app now!",
          adType: "App",
          adImage: "assets/bolt_ad_image.jpg",
          adLogo: "assets/bolt_logo.png",
          adColor: Color(0xFF2eb565),
          adName: "Bolt",
        ),
        ShortsSection(),
        AdvertsSection(
          title: "Ride with top-rated drivers | Bolt: \nRequest a Trip",
          subtitle:
              "Arrive in style, on time, every time. Get the Bolt app now!",
          adType: "site",
          adImage: "assets/coursera_ad_image.png",
          adLogo: "assets/coursera_logo.png",
          adColor: Color.fromARGB(255, 56, 53, 223),
          adName: "Coursera",
        ),
        const SizedBox(
          height: 32,
        ),
        FullVideosSection(
          thumbnail: "assets/learn_flutter_thumbnail.png",
          duration: "12:34",
          profileImage: "assets/profile_image.jpeg",
          title: "Learn Flutter - Full Course for Beginners [2026]",
          channelName: "CodeArtist",
          noViews: "1.5M views",
          timePosted: "2 weeeks ago",
        ),
        const SizedBox(
          height: 32,
        ),
        FullVideosSection(
          thumbnail: "assets/thumbnail.png",
          duration: "12:34",
          profileImage: "assets/profile_image.jpeg",
          title: "Everyday outfit inspiration",
          channelName: "CodeArtist",
          noViews: "1.5M views",
          timePosted: "15 minutes ago",
        ),
      ],
    );
  }
}
