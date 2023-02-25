import 'package:authentication/constants/colors/app_colors.dart';
import 'package:authentication/controller/splash_controller/splash_controller.dart';
import 'package:authentication/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: AppColors.blueGreyColor,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
