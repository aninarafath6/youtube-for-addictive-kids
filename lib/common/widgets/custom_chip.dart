import 'package:dummy_youtube/common/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChip extends StatelessWidget {
  const CustomChip(
      {super.key, this.image, this.text, this.onTap, this.isSelected = false});
  final String? image;
  final String? text;
  final Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: InkWell(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          margin: EdgeInsets.only(right: 8.w),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.dark_2 : AppColors.dark_5,
            borderRadius: BorderRadius.circular(4),
          ),
          height: 32.h,
          child: text != null
              ? Center(
                  child: Text(
                    text!,
                    style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: isSelected ? AppColors.white : AppColors.black),
                  ),
                )
              : Center(
                  child: Image.asset(
                    image!,
                    width: 20,
                    height: 20,
                  ),
                ),
        ),
      ),
    );
  }
}
