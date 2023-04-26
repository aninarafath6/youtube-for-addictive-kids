import 'package:dummy_youtube/common/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, this.onTap, required this.icon});

  final Function()? onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 10,
          height: 10,
          color: Colors.red,
        ),
        IconButton(
          splashRadius: 22.r,
          onPressed: onTap ?? () {},
          icon: Image.asset(
            icon,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ],
    );
  }
}
