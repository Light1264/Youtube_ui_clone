import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/screens/home/components/tabbar.dart';
import 'package:youtube_ui_clone/screens/home/components/tabbar_all_view.dart';

import '../../components/appbar.dart';
import 'components/adverts_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: homeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            homeAppBar(),
            HomeTabBar(),
    
            // AdvertsSection()
            TabbarAllView(),
          ],
        ),
      ),
    );
  }
}
