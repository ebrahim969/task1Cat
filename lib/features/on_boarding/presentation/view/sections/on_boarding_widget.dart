import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/utils/app_styles.dart';
import 'package:task_1_cat/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:task_1_cat/features/on_boarding/presentation/view/components/custom_smooth_indecator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90.h),
              Container(
                height: 178.h,
                width: 300.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      onBoardingData[index].image,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 90.h),
              Text(
                onBoardingData[index].title,
                style: AppStyles.montserrat700Size36,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Text(
                onBoardingData[index].subTitle,
                style: AppStyles.montserrat500Size24
                    .copyWith(fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 50.h),
              CustomSmoothPageIndicator(controller: controller),
            ],
          );
        },
      ),
    );
  }
}
