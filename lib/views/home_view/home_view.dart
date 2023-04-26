import "package:dummy_youtube/common/constants/color_constant.dart";
import "package:dummy_youtube/common/constants/image_constant.dart";
import "package:dummy_youtube/views/home_view/widgets/custom_drawer.dart";
import "package:dummy_youtube/views/home_view/widgets/home_app_bar.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:google_fonts/google_fonts.dart";
import "package:remixicon/remixicon.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      appBar: homeAppBar(context),
      drawer: CustomDrawer(),
    );
  }
}
