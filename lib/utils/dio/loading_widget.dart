import 'package:authentication/constants/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.discreteCircle(
        color: AppColors.blackColor,
        size: 35,
        secondRingColor: AppColors.whiteColor,
        thirdRingColor: AppColors.blackColor,
      ),
    );
  }
}
