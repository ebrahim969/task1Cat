import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/utils/app_assets.dart';
import 'package:task_1_cat/core/utils/app_styles.dart';

class CustomAuthHeader extends StatelessWidget {
  const CustomAuthHeader({super.key, required this.txt1, required this.txt2, required this.txt1Size});
  
  final String txt1, txt2;
  final double txt1Size; 
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          Assets.imagesAuthPic,
          height: 251.h,
        ),
        Positioned(
          bottom: 70.h,
          child: Column(
            children: [
              Text(
                txt1,
                style: AppStyles.montserrat500Size24.copyWith(fontSize: txt1Size),
              ),
              Text(
                txt2,
                style: AppStyles.montserrat300Size14,
              ),
            ],
          ),
        )
      ],
    );
  }
}