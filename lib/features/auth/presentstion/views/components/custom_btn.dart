import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/utils/app_colors.dart';
import 'package:task_1_cat/core/utils/app_styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.color, required this.text, this.onPressed});
  final Color? color;
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppStyles.montserrat600Size20
            ),
            SizedBox(width: 5.w,),
            Icon(Icons.arrow_forward_ios, size: 20.sp,color: AppColors.kBackgroundColor,)
          ],
        ),
      ),
    );
  }
}