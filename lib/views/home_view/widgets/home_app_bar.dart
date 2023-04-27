import 'package:dummy_youtube/common/constants/image_constant.dart';
import 'package:dummy_youtube/common/widgets/custom_chip.dart';
import 'package:dummy_youtube/common/widgets/custom_icon_button.dart';
import 'package:dummy_youtube/controllers/home_controller.dart';
import 'package:dummy_youtube/views/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

AppBar homeAppBar(BuildContext context) {
  final HomeController _homeController = Get.put(HomeController());

  List<String> chipList = [
    "All",
    "Music",
    "News",
    "Gaming",
    "Comedy",
    "Kids",
    "Live",
    "Reactions",
    "Trending",
    "Recently uploaded",
    "New to you"
  ];

  return AppBar(
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
    systemOverlayStyle: const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
    ),
    actions: [
      const CustomIconButton(icon: AppImages.castIcon),
      const CustomIconButton(
        icon: AppImages.notificationIcon,
        count: "9",
      ),
      const CustomIconButton(icon: AppImages.searchIcon),
      Container(
        margin: EdgeInsets.only(bottom: 11.h),
        child: IconButton(
          onPressed: () {},
          splashRadius: 22.r,
          icon: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
              "https://avatars.githubusercontent.com/u/65447144?v=4",
              width: 24.w,
              height: 24.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      // SizedBox(width: 12.w),
    ],
    toolbarHeight: 90.h,
    // systemOverlayStyle: SystemUiOverlayStyle.dark,
    bottom: PreferredSize(
      preferredSize: Size(double.infinity, 20.h),
      child: SizedBox(
        height: 55,
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 12.w),
            CustomChip(
              image: AppImages.exploreIcon,
              onTap: () {
                HomeView.scaffoldKey.currentState?.openDrawer();
              },
            ),
            ...List.generate(
              chipList.length,
              (index) => Obx(
                () {
                  return CustomChip(
                    text: chipList[index],
                    isSelected: index == _homeController.selectedIndex.value,
                    onTap: () => _homeController.onChipSelect(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
    elevation: 0,
  );
}
