import 'controller/twitter_video_player_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:soumi_s_application9/widgets/app_bar/custom_app_bar.dart';

class TwitterVideoPlayerScreen extends GetWidget<TwitterVideoPlayerController> {
  const TwitterVideoPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.whiteA700,
            appBar: CustomAppBar(
                height: 94.v,
                leadingWidth: 52.h,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgClose,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v),
                    onTap: () {
                      onTapCloseone();
                    }),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgUpload,
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 12.v))
                ]),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 56.v),
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.gray80002,
                          appTheme.gray800,
                          appTheme.gray800
                        ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgMedia414x414,
                              height: 414.adaptSize,
                              width: 414.adaptSize),
                          SizedBox(height: 60.v),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(vertical: 13.v),
                              decoration: AppDecoration.fillGray900,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMap,
                                        height: 16.v,
                                        width: 11.h),
                                    SizedBox(
                                        height: 16.v,
                                        width: 261.h,
                                        child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      height: 3.v,
                                                      width: 261.h,
                                                      margin: EdgeInsets.only(
                                                          bottom: 3.v),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: SizedBox(
                                                                    width:
                                                                        261.h,
                                                                    child: Divider(
                                                                        color: appTheme
                                                                            .gray80001))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: SizedBox(
                                                                    width: 34.h,
                                                                    child: Divider(
                                                                        color: appTheme
                                                                            .whiteA700)))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      height: 16.adaptSize,
                                                      width: 16.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 25.h),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.h),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: appTheme
                                                                    .black90001
                                                                    .withOpacity(
                                                                        0.5),
                                                                spreadRadius:
                                                                    2.h,
                                                                blurRadius: 2.h,
                                                                offset: Offset(
                                                                    0, 1))
                                                          ])))
                                            ])),
                                    Text("lbl_0_02_0_16".tr,
                                        style: theme.textTheme.labelLarge)
                                  ]))
                        ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapCloseone() {
    Get.back();
  }
}
