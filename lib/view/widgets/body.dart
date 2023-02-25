import 'package:authentication/constants/colors/app_colors.dart';
import 'package:flutter/widgets.dart';

class SecondOne extends StatelessWidget {
  const SecondOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 24,
          child: Stack(
            children: [
              Text(
                "Recomended",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 7,
                color: AppColors.blueGreyColor,
              )
            ],
          ),
        )
      ],
    );
  }
}
