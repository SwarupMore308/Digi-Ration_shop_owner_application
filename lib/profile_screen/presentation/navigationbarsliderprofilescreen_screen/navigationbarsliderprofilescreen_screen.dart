import 'package:digi_ration_shop_owner_application/profile_screen/core/utils/image_constant.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/core/utils/navigator_service.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/core/utils/size_utils.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/localization/app_localization.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/routes/app_routes.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/theme/app_decoration.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/theme/theme_helper.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/widgets/custom_image_view.dart';

import 'bloc/navigationbarsliderprofilescreen_bloc.dart';
import 'models/navigationbarsliderprofilescreen_model.dart';
import 'package:flutter/material.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/core/app_export.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/widgets/custom_elevated_button.dart';

class NavigationbarsliderprofilescreenScreen extends StatelessWidget {
  const NavigationbarsliderprofilescreenScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<NavigationbarsliderprofilescreenBloc>(
        create: (context) => NavigationbarsliderprofilescreenBloc(
            NavigationbarsliderprofilescreenState(
                navigationbarsliderprofilescreenModelObj:
                    const NavigationbarsliderprofilescreenModel()))
          ..add(NavigationbarsliderprofilescreenInitialEvent()),
        child: const NavigationbarsliderprofilescreenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationbarsliderprofilescreenBloc,
        NavigationbarsliderprofilescreenState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: 278.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 25.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 19.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse980x88,
                        height: 80.v,
                        width: 88.h,
                        radius: BorderRadius.circular(44.h)),
                    SizedBox(height: 24.v),
                    Text("lbl_ramesh_sharma".tr,
                        style: TextStyle(
                            color: appTheme.black900,
                            fontSize: 20.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: 39.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildProfileRow(context,
                            profile: "lbl_dashboard".tr)),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildProfileRow(context,
                            profile: "lbl_profile".tr, onTapProfileRow: () {
                          onTapProfileRow(context);
                        })),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildViewCustomerRow(context,
                            userImage: ImageConstant.imgRectangle14,
                            viewCustomerText: "lbl_new_customer".tr)),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildViewCustomerRow(context,
                            userImage: ImageConstant.imgRectangle15,
                            viewCustomerText: "lbl_view_customer".tr)),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildViewCustomerRow(context,
                            userImage: ImageConstant.imgRectangle17,
                            viewCustomerText: "msg_stock_management".tr)),
                    SizedBox(height: 2.v),
                    _buildSlotManagementRow(context),
                    SizedBox(height: 2.v),
                    _buildFeedbackAndComplaintRow(context),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child:
                            _buildProfileRow(context, profile: "lbl_about".tr)),
                    const Spacer(),
                    CustomElevatedButton(
                        height: 32.v,
                        width: 118.h,
                        text: "lbl_logout".tr,
                        margin: EdgeInsets.only(left: 10.h),
                        buttonStyle: CustomButtonStyles.fillBlack,
                        alignment: Alignment.centerLeft)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildSlotManagementRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
        decoration: AppDecoration.fillLime,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle18,
                  height: 30.v,
                  width: 40.h,
                  margin: EdgeInsets.only(bottom: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, top: 6.v, bottom: 5.v),
                  child: Text("lbl_slot_management".tr,
                      style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 15.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600)))
            ]));
  }

  /// Section Widget
  Widget _buildFeedbackAndComplaintRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 4.v),
        decoration: AppDecoration.fillLime,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle19,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(left: 10.h, bottom: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 19.h, top: 6.v, bottom: 7.v),
                  child: Text("msg_feedback_complaints".tr,
                      style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 15.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600)))
            ]));
  }

  /// Common widget
  Widget _buildProfileRow(
    BuildContext context, {
    required String profile,
    Function? onTapProfileRow,
  }) {
    return GestureDetector(
        onTap: () {
          onTapProfileRow!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 5.v),
            decoration: AppDecoration.fillLime,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse1430x30,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      radius: BorderRadius.circular(15.h),
                      margin: EdgeInsets.only(bottom: 1.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 18.h, bottom: 9.v),
                      child: Text(profile,
                          style: TextStyle(
                              color: appTheme.black900,
                              fontSize: 16.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600)))
                ])));
  }

  /// Common widget
  Widget _buildViewCustomerRow(
    BuildContext context, {
    required String userImage,
    required String viewCustomerText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 5.v),
        decoration: AppDecoration.fillLime,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: userImage,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(bottom: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 18.h, top: 4.v, bottom: 6.v),
                  child: Text(viewCustomerText,
                      style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 16.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600)))
            ]));
  }

  /// Navigates to the profilescreenScreen when the action is triggered.
  onTapProfileRow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilescreenScreen,
    );
  }
}
