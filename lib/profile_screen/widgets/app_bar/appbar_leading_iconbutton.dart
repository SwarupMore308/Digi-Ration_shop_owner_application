import 'package:digi_ration_shop_owner_application/profile_screen/core/utils/size_utils.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    super.key,
    this.imagePath,
    this.margin,
    this.onTap,
  });

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 40.v,
          width: 48.h,
          child: CustomImageView(
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
