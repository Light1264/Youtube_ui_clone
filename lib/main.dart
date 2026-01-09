import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/components/bottomNavBar.dart';
import 'package:youtube_ui_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube_Ui_clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColor.primaryBColor,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColor.primaryBColor,
          ),
      ),
      home: BottomNavBar(),
    );
  }
}
