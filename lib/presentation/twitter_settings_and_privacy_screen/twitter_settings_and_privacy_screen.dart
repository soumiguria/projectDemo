import 'controller/twitter_settings_and_privacy_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:soumi_s_application9/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TwitterSettingsAndPrivacyScreen
    extends GetWidget<TwitterSettingsAndPrivacyController> {
  const TwitterSettingsAndPrivacyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.v),
                decoration: AppDecoration.outlineBlueGray,
                child: CustomAppBar(
                  height: 22.v,
                  centerTitle: true,
                  title: AppbarSubtitle2(
                    text: "msg_settings_and_privacy".tr,
                  ),
                  actions: [
                    AppbarSubtitle1(
                      text: "lbl_done".tr,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 20.h,
                        bottom: 1.v,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 11.v,
                    ),
                    decoration: AppDecoration.background,
                    child: Text(
                      "lbl_pixsellz2".tr,
                      style: CustomTextStyles.titleMediumBluegray500,
                    ),
                  ),
                  Container(
                    decoration: AppDecoration.outlineBluegray1002,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text(
                                  "lbl_account".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 13.v,
                                width: 7.h,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  right: 5.h,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "msg_privacy_and_safety".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 13.v,
                                width: 7.h,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  right: 5.h,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text(
                                  "lbl_notifications".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 13.v,
                                width: 7.h,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  right: 5.h,
                                  bottom: 4.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "msg_content_preferences".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 13.v,
                                width: 7.h,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  right: 5.h,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration.background,
                    child: Text(
                      "lbl_general".tr,
                      style: CustomTextStyles.titleMediumBluegray500,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Container(
                    decoration: AppDecoration.outlineBluegray1002,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "msg_display_and_sound".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 13.v,
                                width: 7.h,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  right: 5.h,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "lbl_data_usage".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 13.v,
                                width: 7.h,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  right: 5.h,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "lbl_accessibility".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 13.v,
                                width: 7.h,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  right: 5.h,
                                  bottom: 4.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text(
                                  "lbl_about_twitter".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 13.v,
                                width: 7.h,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  right: 5.h,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: appTheme.blueGray100,
                          indent: 20.h,
                        ),
                        Container(
                          width: 374.h,
                          margin: EdgeInsets.fromLTRB(20.h, 11.v, 20.h, 14.v),
                          child: Text(
                            "msg_general_settings".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
