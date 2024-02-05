import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_1_cat/core/utils/app_colors.dart';
import 'package:task_1_cat/core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText, required this.iconPath,
  });
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool? obscureText;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 19.h),
      child: SizedBox(
        height: 50.h,
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "This field is required";
            } else {
              return null;
            }
          },
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          obscureText: obscureText ?? false,
          
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.kGreyColor.withOpacity(.2),
            labelText: labelText,
            labelStyle: AppStyles.montserrat300Size14.copyWith(color: AppColors.kBlackWithOpacityColor),
            suffixIcon: SvgPicture.asset(iconPath,fit: BoxFit.scaleDown,),
            border: getBorderStyle(),
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle(),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none);
}