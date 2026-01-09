import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/utils/colors.dart';
import 'package:youtube_ui_clone/screens/create_screen.dart';
import 'package:youtube_ui_clone/screens/home/home_screen.dart';
import 'package:youtube_ui_clone/screens/profile_screen.dart';
import 'package:youtube_ui_clone/screens/shorts_screen.dart';
import 'package:youtube_ui_clone/screens/subscriptions_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
    this.index,
  });
  final int? index;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  late List screens;

  @override
  void initState() {
    super.initState();

    screens = [
      const HomeScreen(),
      const ShortsScreen(),
      const CreateScreen(),
      const SubscriptionsScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.primaryBColor,
        elevation: 0,
        selectedItemColor: AppColor.whiteColor,
        unselectedItemColor: AppColor.whiteColor,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        selectedIconTheme: const IconThemeData(
          color: AppColor.whiteColor,
          size: 32,
        ),
        unselectedIconTheme: const IconThemeData(
          color: AppColor.whiteColor,
          size: 30,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        showUnselectedLabels: true,
        onTap: (int currentIndex) {
          setState(() {
            selectedIndex = currentIndex;
          });
        },
        currentIndex: selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Icon(Icons.home_filled),
            ),
            label: "Home",
            backgroundColor: AppColor.primaryBColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/youtube_short_small.png",
              color: AppColor.whiteColor,
            ),
            label: "shorts",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: AppColor.inactiveColor,
              child: Icon(
                Icons.add,
                size: 35,
                color: AppColor.whiteColor,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 1,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppColor.whiteColor,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    size: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColor.inactiveColor,
                backgroundImage: AssetImage(
                  "assets/profile_image.jpeg",
                ),
              ),
            ),
            label: "You",
          ),
        ],
      ),
      body: screens[selectedIndex],
    );
  }
}
