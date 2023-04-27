import "package:dummy_youtube/common/constants/color_constant.dart";
import "package:dummy_youtube/views/home_view/widgets/bottom_navigation.dart";
import "package:dummy_youtube/views/home_view/widgets/custom_drawer.dart";
import "package:dummy_youtube/views/home_view/widgets/home_app_bar.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:google_fonts/google_fonts.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: homeAppBar(context),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const BottomNavigation(),
      body: ListView(
        children: const [
          HomeAdCard(),
          Divider(thickness: 5),
        ],
      ),
    );
  }
}

class HomeAdCard extends StatelessWidget {
  const HomeAdCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300.h,
      child: Column(
        children: const [
          Flexible(
            flex: 1,
            child: Thumbniail(
              url:
                  "https://venturebeat.com/wp-content/uploads/2020/11/google-pay-hero.png?fit=2400%2C1200&strip=all",
              duration: "0:20",
            ),
          ),
          VideoShortDesc(
            isAdd: true,
          ),
        ],
      ),
    );
  }
}

class VideoShortDesc extends StatelessWidget {
  const VideoShortDesc({
    super.key,
    this.isAdd = false,
  });

  final bool isAdd;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.w),
        // color: Colors.red,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      "https://images.hindustantimes.com/tech/img/2020/11/05/1600x900/image_-_2020-11-05T095740.083_1604550459365_1604550465218_1604550598928.jpg"),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Receive money on phone number from any UPI app",
                        maxLines: 3,
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Receive money on phone number from any UPI app",
                        maxLines: 3,
                        style: GoogleFonts.roboto(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w300,
                            color: AppColors.black.withOpacity(.5)),
                      ),
                      SizedBox(height: 5.h),
                      isAdd
                          ? Row(
                              children: [
                                Text(
                                  "Ad.",
                                  maxLines: 3,
                                  style: GoogleFonts.roboto(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black.withOpacity(.9)),
                                ),
                                Text(
                                  "  4.0★  FREE",
                                  maxLines: 3,
                                  style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black.withOpacity(.6)),
                                )
                              ],
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
                const Icon(Icons.more_vert_outlined)
              ],
            ),
            SizedBox(height: 15.h),
            isAdd
                ? Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffE7F3FF),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Install",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xff1669B7)),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Icon(Icons.download,
                                  color: Color(0xff1669B7))
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}

class Thumbniail extends StatelessWidget {
  const Thumbniail({super.key, required this.duration, required this.url});

  final String url;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Center(
            child: Image.network(
              url,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 10,
          child: Container(
            // height: 24,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppColors.black.withOpacity(.7),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Center(
              child: Text(
                duration,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 8.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
