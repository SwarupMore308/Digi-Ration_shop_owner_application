import 'bloc/dropdown_profile_bloc.dart';
import 'models/dropdown_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:profilescreen/core/app_export.dart';

class DropdownProfileScreen extends StatelessWidget {
  const DropdownProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DropdownProfileBloc>(
      create: (context) => DropdownProfileBloc(DropdownProfileState(
        dropdownProfileModelObj: DropdownProfileModel(),
      ))
        ..add(DropdownProfileInitialEvent()),
      child: DropdownProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropdownProfileBloc, DropdownProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: 270.h,
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 39.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildHeaderSection(context),
                  SizedBox(height: 9.v),
                  _buildSeventeenSection(context),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHeaderSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse958x69,
            height: 58.v,
            width: 69.h,
            radius: BorderRadius.circular(
              34.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 20.v,
            ),
            child: Text(
              "lbl_ramesh_sharma".tr,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 20.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeenSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 64.v,
        width: 229.h,
        padding: EdgeInsets.symmetric(horizontal: 46.h),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 7.v),
                child: Text(
                  "lbl_dashboard".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Text(
                  "lbl_logout2".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
