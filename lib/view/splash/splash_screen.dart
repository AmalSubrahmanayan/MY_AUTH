import 'package:authentication/constants/colors/app_colors.dart';
import 'package:authentication/controller/splash_controller/splash_controller.dart';
import 'package:authentication/utils/dio/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashProvider =
        Provider.of<SplashController>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      splashProvider.splash(context);
    });
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.filter_drama_outlined,
            size: 100,
          ),
          Center(
            child: LoadingWidget(),
          ),
        ],
      ),
    );
  }
}
