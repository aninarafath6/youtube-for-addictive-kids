import 'package:dummy_youtube/common/constants/color_constant.dart';
import 'package:dummy_youtube/common/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remix/attributes/size/size.api.dart';
import 'package:remixicon/remixicon.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(top: 20.w, left: 20.w, right: 20.w),
      width: mediaWidth * .7,
      color: Colors.white,
      child: Align(
        alignment: Alignment.topLeft,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                AppImages.appLogo,
                height: 20.h,
                width: 90.w,
              ),
            ),
            SizedBox(height: 15.h),
            const DrawerTile(leading: Remix.fire_line, title: "Trending"),
            const DrawerTile(
                leading: Remix.shopping_bag_2_line, title: "Shopping"),
            const DrawerTile(leading: Remix.music_line, title: "Music"),
            const DrawerTile(
                leading: Remix.clapperboard_line, title: "Movies & shows"),
            const DrawerTile(leading: Remix.signal_tower_line, title: "Live"),
            const DrawerTile(leading: Remix.gamepad_line, title: "Gaming"),
            const DrawerTile(leading: Remix.newspaper_line, title: "News"),
            const DrawerTile(leading: Remix.trophy_line, title: "Spot"),
            const DrawerTile(leading: Remix.lightbulb_line, title: "Learning"),
            const DrawerTile(
                leading: Remix.shirt_line, title: "Fashion & beauty"),
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.title,
    required this.leading,
  });

  final String title;
  final IconData leading;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(4),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.roboto(),
        ),
        leading: Icon(
          leading,
          color: AppColors.black,
        ),
        contentPadding: EdgeInsets.only(left: 5.w),
        onTap: () {
          print("hi");
        },
      ),
    );
  }
}
