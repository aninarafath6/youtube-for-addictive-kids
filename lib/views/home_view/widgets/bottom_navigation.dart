import 'package:dummy_youtube/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  static final HomeController _homeController = Get.put(HomeController());

  static List<Map<String, String>> navigation_list = [
    {
      "label": "Home",
      "url": "assets/png/icons/home_off.png",
      "active_url": "assets/png/icons/home_on.png",
    },
    {
      "label": "Shorts",
      "url": "assets/png/icons/shorts_off.png",
      "active_url": "assets/png/icons/shorts_on.png",
    },
    {
      "label": "add",
      "url": "assets/png/icons/add.png",
      "active_url": "assets/png/icons/add.png",
    },
    {
      "label": "Subscription",
      "url": "assets/png/icons/subscription_off.png",
      "active_url": "assets/png/icons/subscription_on.png",
    },
    {
      "label": "Library",
      "url": "assets/png/icons/library_off.png",
      "active_url": "assets/png/icons/library_on.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      int selectedIndex = _homeController.selected_nav.value;
      return Container(
        color: Colors.white,
        // padding: EdgeInsets.symmetric(vertical: 10),/
        height: 55.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            navigation_list.length,
            (index) => NavItem(
              url: selectedIndex == index
                  ? navigation_list[index]["active_url"]!
                  : navigation_list[index]["url"]!,
              label: navigation_list[index]["label"]!,
              title: navigation_list[index]["label"] != "add",
              onTap: () {
                _homeController.onNavigateHome(index);
              },
            ),
          ),
        ),
      );
    });
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.url,
    required this.label,
    this.active = false,
    this.title = true,
    required this.onTap,
  });

  final String url;
  final String label;
  final bool active;
  final bool title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(100.r),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 70.w,
          padding: EdgeInsets.symmetric(horizontal: 0.w),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                url,
                width: title ? 24.w : 42.w,
                height: title ? 24.w : 42.w,
              ),
              title
                  ? Text(
                      label,
                      style: GoogleFonts.roboto(fontSize: 10.sp),
                      textAlign: TextAlign.center,
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
