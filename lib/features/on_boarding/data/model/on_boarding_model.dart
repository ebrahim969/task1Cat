import 'package:task_1_cat/core/utils/app_assets.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.image, required this.title, required this.subTitle});

}

List<OnBoardingModel> onBoardingData = [
    OnBoardingModel(
      image: Assets.imagesOnBoardingPic1,
      title: AppStrings.exploretheworldeasily,
      subTitle: AppStrings.toyourdesire,
    ),
    OnBoardingModel(
      image: Assets.imagesOnBoardingPic2,
      title: AppStrings.reachtheunknownspot,
      subTitle: AppStrings.toyourdestination,
    ),
    OnBoardingModel(
      image: Assets.imagesOnBoradingPic3,
      title: AppStrings.makeconnectswithexplora,
      subTitle: AppStrings.toyourdreamtrip,
    ),
  ];
