import "package:dummy_youtube/common/constants/image_constant.dart";
import "package:dummy_youtube/common/widgets/custom_icon_button.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 110.w,
        leading: Row(
          children: [
            SizedBox(width: 12.w),
            Image.asset(
              AppImages.appLogo,
              height: 20.h,
              width: 90.w,
            ),
          ],
        ),
        actions: [
          const CustomIconButton(icon: AppImages.castIcon),
          const CustomIconButton(icon: AppImages.notificationIcon),
          const CustomIconButton(icon: AppImages.searchIcon),
          IconButton(
            onPressed: () {},
            splashRadius: 22.r,
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                "https://avatars.githubusercontent.com/u/65447144?v=4",
                width: 24.w,
                height: 24.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.w),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
