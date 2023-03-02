import 'package:authentication/constants/colors/app_colors.dart';
import 'package:authentication/constants/sizedboxes/app_sizedboxes.dart';
import 'package:authentication/controller/sign_in_controller/sign_in_controller.dart';
import 'package:authentication/view/widgets/my_button.dart';
import 'package:authentication/view/widgets/my_textfield.dart';
import 'package:authentication/view/widgets/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SignInProvider>(context);
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
                AppSizedBoxes.sizedboxH15,
                const Text(
                  "Login to continue",
                  style: TextStyle(
                    color: AppColors.greyDartColor,
                    fontSize: 16,
                  ),
                ),
                AppSizedBoxes.sizedboxH25,
                // user name textfeld
                MyTextfield(
                  controller: controller.emailController,
                  hintText: "Email Address",
                  obscureText: false,
                ),
                AppSizedBoxes.sizedboxH15,

                // password textfeld
                MyTextfield(
                  controller: controller.passwordController,
                  hintText: "Enter your password",
                  obscureText: true,
                ),
                AppSizedBoxes.sizedboxH15,

                // signin button
                MyButton(
                  name: "Signin",
                  onTap: signUserIn,
                ),
                AppSizedBoxes.sizedboxH15,

                // google + apple sign in buttons
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // google button
                      SquareTile(imagepath: "assets/images/google_logo.png"),
                      AppSizedBoxes.sizedboxW60,
                      Text("Sign in with Google")
                    ],
                  ),
                ),
                AppSizedBoxes.sizedboxH25,

                // register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Don't have accont?"),
                    AppSizedBoxes.sizedboxW5,
                    Text(
                      "Click"
                      "Register ",
                      style: TextStyle(
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                AppSizedBoxes.sizedboxH10,
                // register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("forget password?Click"),
                    AppSizedBoxes.sizedboxW5,
                    Text(
                      "Click"
                      "Rest",
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
