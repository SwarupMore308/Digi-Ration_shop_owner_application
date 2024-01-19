import 'bloc/profilescreen_bloc.dart';
import 'models/profilescreen_model.dart';
import 'package:flutter/material.dart';
import 'package:profilescreen/core/app_export.dart';
import 'package:profilescreen/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:profilescreen/widgets/app_bar/appbar_trailing_image.dart';
import 'package:profilescreen/widgets/app_bar/custom_app_bar.dart';
import 'package:profilescreen/widgets/custom_elevated_button.dart';

class ProfilescreenScreen extends StatelessWidget {
  const ProfilescreenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilescreenBloc>(
        create: (context) => ProfilescreenBloc(
            ProfilescreenState(profilescreenModelObj: ProfilescreenModel()))
          ..add(ProfilescreenInitialEvent()),
        child: ProfilescreenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilescreenBloc, ProfilescreenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 663.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          _buildAppBar(context),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse9,
                              height: 98.v,
                              width: 88.h,
                              radius: BorderRadius.circular(49.h),
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 80.v)),
                          _buildProfileDetails(context)
                        ])),
                    _buildActionButtons(context)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 63.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgRectangle5,
            margin: EdgeInsets.only(left: 15.h, top: 30.v, bottom: 240.v),
            onTap: () {
              onTapIconButton(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgClock,
              margin: EdgeInsets.fromLTRB(20.h, 41.v, 20.h, 243.v),
              onTap: () {
                onTapClock(context);
              })
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProfileDetails(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 485.v,
            width: 320.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 40.v),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_full_name".tr,
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_ramesh_sharma".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 11.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_adress".tr,
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_india".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 10.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_phone_no".tr,
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_91_122xxxx090".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 11.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_aadhar".tr,
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_xxxxxxxx1234".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 10.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_ben_id2".tr,
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_b1120".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 8.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_members".tr,
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_4".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 9.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_distributor".tr,
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "msg_mr_a_s_choudhary".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 8.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_adress2".tr,
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_india2".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 9.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_dist_id2".tr,
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_ac11034".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.left))
                          ]))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 64.v),
                      child: Text("lbl_ramesh_sharma".tr,
                          style: TextStyle(
                              color: appTheme.black900,
                              fontSize: 20.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600))))
            ])));
  }

  /// Section Widget
  Widget _buildActionButtons(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 21.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomElevatedButton(
                  width: 128.h,
                  text: "lbl_edit".tr,
                  margin: EdgeInsets.only(bottom: 50.v)),
              CustomElevatedButton(
                  width: 128.h,
                  text: "lbl_dashboard".tr,
                  margin: EdgeInsets.only(right: 2.h, bottom: 50.v))
            ]));
  }

  /// Navigates to the navigationbarsliderprofilescreenScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.navigationbarsliderprofilescreenScreen,
    );
  }

  /// Navigates to the dropdownProfileScreen when the action is triggered.
  onTapClock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dropdownProfileScreen,
    );
  }
}
