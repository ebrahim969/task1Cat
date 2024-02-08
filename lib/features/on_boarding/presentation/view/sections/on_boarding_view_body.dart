import 'package:flutter/material.dart';
import 'package:task_1_cat/core/functions/navigation.dart';
import 'package:task_1_cat/core/utils/app_colors.dart';
import 'package:task_1_cat/features/on_boarding/data/function/on_boarding_cache.dart';
import 'package:task_1_cat/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:task_1_cat/features/on_boarding/presentation/view/sections/on_boarding_widget.dart';

class OnBoradingViewBody extends StatefulWidget {
  const OnBoradingViewBody({super.key});

  @override
  State<OnBoradingViewBody> createState() => _OnBoradingViewBodyState();
}

class _OnBoradingViewBodyState extends State<OnBoradingViewBody> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              OnBoardingWidgetBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              Positioned(
                bottom: 50,
                right: 10,
                child: InkWell(
                  onTap: () {
                    if (currentIndex == onBoardingData.length - 1) {
                      customReplacementNavigate(context, "/SignUpView");
                      onBoardingVisited();
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.slowMiddle,
                      );
                    }
                  },
                  child: const CircleAvatar(
                    backgroundColor: AppColors.kBlackColor,
                    radius: 25,
                    child: Center(
                        child: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.kBackgroundColor,
                    )),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
