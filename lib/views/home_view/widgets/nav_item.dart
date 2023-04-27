import 'package:dummy_youtube/common/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.label,
    required this.URL,
    this.active = false,
    this.title = true,
  });

  final String label;
  final String URL;
  final bool active;
  final bool title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("hi");
      },
      radius: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            URL,
            width: title ? 30.w : 42.w,
            height: title ? 30.w : 42.w,
            color: AppColors.black,
          ),
          title
              ? Text(
                  label,
                  style: GoogleFonts.roboto(fontSize: 12.sp),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
