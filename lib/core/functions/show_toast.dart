import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_1_cat/core/utils/app_colors.dart';

showToast(
  String msg,
) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: AppColors.kPrimaryColor,
    textColor: AppColors.kBackgroundColor,
    fontSize: 16.0,
  );
}