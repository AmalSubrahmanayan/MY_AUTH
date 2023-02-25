import 'package:authentication/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.height * 0.2,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 9,
                    right: 9,
                    bottom: 45,
                  ),
                  height: size.height * 0.2 - 27,
                  decoration: const BoxDecoration(
                    color: AppColors.blueGreyColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Hi User!",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar()
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 26),
                    padding: const EdgeInsets.only(left: 16),
                    height: 54,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          color: AppColors.greyColor,
                        )
                      ],
                    ),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: AppColors.greyDartColor,
                        ),
                        suffixIcon: Icon(Icons.search_sharp),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      

      ),
    );
  }
}
