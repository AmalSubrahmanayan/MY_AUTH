import 'package:authentication/constants/colors/app_colors.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String name;

  MyButton({super.key, required this.onTap, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: AppColors.greenColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
