import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/utils/app_colors.dart';

abstract class AppStyles
{
  static final montserrat500Size24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.kBlackColor,
    fontFamily: "Montserrat"
  ),

  montserrat300Size14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.kBlackColor,
    fontFamily: "Montserrat"
  ),

  montserrat600Size20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.kBackgroundColor,
    fontFamily: "Montserrat"
  ),

  arial400Size10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.kBlackColor,
    fontFamily: "arial"
  );
}