import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/widgets/textwidget.dart';
import '../../../utils/colors.dart';
class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  List<String> tabBarText = [
  "All",
  "Fashion",
  "court shows",
  "Podcasts",
  "Life Style"
];

int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.fromLTRB(16, 16, 0, 8),
    child: SizedBox(
      height: 35,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColor.inactiveColor,
              ),
              child: Icon(
                Icons.adjust_outlined,
                size: 30,
                color: AppColor.whiteColor,
              ),
            ),
            const SizedBox(
              width: 18,
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: tabBarText.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = index;
                      });
                    },
                    child: containerText(
                      tabBarText[index],
                      isSelected == index,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    ),
  );
  }
}




Widget containerText(String text, bool isSelected) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
    height: 20,
    decoration: BoxDecoration(
      color: isSelected ? AppColor.whiteColor : AppColor.inactiveColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
      child: TextWidget(
        text: text,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: isSelected ? AppColor.primaryBColor : AppColor.whiteColor,
      ),
    ),
  );
}
