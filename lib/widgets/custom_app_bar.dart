import 'package:calculator/util/constants/colors.dart';
import 'package:calculator/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:calculator/util/constants/images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.kodeCampLogo,
            width: 45,
            height: 45,
          ),
          const BoldText(
            text: "KodeCamp",
            textSize: 18,
            textColor: AppColor.primaryColor,
          ),
          const SizedBox(width: 2),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
