import 'package:dummy_youtube/common/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.onTap,
    required this.icon,
    this.count,
  });

  final Function()? onTap;
  final String icon;
  final String? count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          splashRadius: 22.r,
          onPressed: onTap ?? () {},
          icon: Image.asset(
            icon,
            width: 24.w,
            height: 24.h,
          ),
        ),
        count != null
            ? Positioned(
                top: 12.h,
                right: 3.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 20.w,
                  height: 16.h,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        "9+",
                        style: GoogleFonts.roboto(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
