import "package:dummy_youtube/common/constants/image_constant.dart";
import "package:dummy_youtube/common/widgets/custom_chip.dart";
import "package:dummy_youtube/common/widgets/custom_icon_button.dart";
import "package:dummy_youtube/controllers/home_controller.dart";
import "package:dummy_youtube/views/home_view/widgets/home_app_bar.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
    );
  }

}
