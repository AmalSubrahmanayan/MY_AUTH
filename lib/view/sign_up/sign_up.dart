import 'package:authentication/constants/colors/app_colors.dart';
import 'package:authentication/constants/sizedboxes/app_sizedboxes.dart';
import 'package:authentication/view/widgets/my_button.dart';
import 'package:authentication/view/widgets/my_textfield.dart';
import 'package:authentication/view/widgets/square_tile.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  // sign usrt in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppSizedBoxes.sizedboxH50,
                // logo
                const Icon(
                  Icons.filter_drama_outlined,
                  size: 100,
                ),
                AppSizedBoxes.sizedboxH10,
                // welcome back
                const Text(
                  "Welcome to Lungo!",
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16,
                  ),
                ),
                AppSizedBoxes.sizedboxH5,
                // welcome back
                const Text(
                  "Register to Conotinue",
                  style: TextStyle(
                    color: AppColors.greyDartColor,
                    fontSize: 14,
                  ),
                ),
                AppSizedBoxes.sizedboxH15,
                // user name textfeld
                MyTextfield(
                  controller: usernameController,
                  hintText: "Name",
                  obscureText: false,
                ),
                AppSizedBoxes.sizedboxH15,
                //
                MyTextfield(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),
                AppSizedBoxes.sizedboxH15,

                // password textfeld
                MyTextfield(
                  controller: passwordController,
                  hintText: "Enter your password",
                  obscureText: true,
                ),
                AppSizedBoxes.sizedboxH15,

                // password textfeld
                MyTextfield(
                  controller: passwordController,
                  hintText: "Confirm password",
                  obscureText: true,
                ),
                AppSizedBoxes.sizedboxH15,

                // signin button
                MyButton(
                  onTap: signUserIn,
                ),
                AppSizedBoxes.sizedboxH25,

                // register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("You have an account?"),
                    AppSizedBoxes.sizedboxW5,
                    Text(
                      "click "
                      "Sign in",
                      style: TextStyle(
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
