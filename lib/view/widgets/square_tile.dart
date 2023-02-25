import 'package:authentication/constants/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';

class SquareTile extends StatelessWidget {
  final String imagepath;
  const SquareTile({super.key, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.whiteColor,
        ),
        borderRadius: BorderRadius.circular(16),
        color: AppColors.greyDartColor,
      ),
      child: Image.asset(
        imagepath,
        height: 45,
      ),
    );
  }
}
