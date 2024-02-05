import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/functions/navigation.dart';
import 'package:task_1_cat/core/utils/app_colors.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/core/utils/app_styles.dart';

class AlreadyMemberWidget extends StatelessWidget {
  const AlreadyMemberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.alreadyAMember,
            style: AppStyles.montserrat500Size24.copyWith(
              fontSize: 13.sp,
            )),
        TextButton(
          onPressed: () {
            customNavigate(context, "/SignInView");
          },
          child: Text(AppStrings.logIn,
              style: AppStyles.montserrat500Size24
                  .copyWith(fontSize: 13.sp, color: AppColors.kPrimaryColor)),
        )
      ],
    );
  }
}
