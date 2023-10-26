import '../controller/twitter_search_controller.dart';
import '../models/twitter_search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class TwitterSearchItemWidget extends StatelessWidget {
  TwitterSearchItemWidget(
    this.twitterSearchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwitterSearchItemModel twitterSearchItemModelObj;

  var controller = Get.find<TwitterSearchController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 393.h,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          bottom: 15.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 84.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRound56x56,
                        height: 56.adaptSize,
                        width: 56.adaptSize,
                        radius: BorderRadius.circular(
                          28.h,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "lbl_sab_khasa".tr,
                        style: CustomTextStyles.bodyMediumGray90002,
                      ),
                      Text(
                        "lbl_s_khasan".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 65.v,
                      bottom: 16.v,
                    ),
                    child: Text(
                      "lbl_figma_plugins".tr,
                      style: CustomTextStyles.bodyMediumGray90002,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRound2,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "lbl_martha_cr".tr,
                    style: CustomTextStyles.bodyMediumGray90002,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "lbl_craig_love2".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRound3,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 8.v,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "lbl_tibitha_p".tr,
                          style: CustomTextStyles.bodyMediumGray90002,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCheckmark,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          margin: EdgeInsets.only(left: 1.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "lbl_mis_potter".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRound4,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          radius: BorderRadius.circular(
                            28.h,
                          ),
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRound5,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          radius: BorderRadius.circular(
                            28.h,
                          ),
                          margin: EdgeInsets.only(left: 31.h),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 8.v,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "lbl_figma".tr,
                          style: CustomTextStyles.bodyMediumGray90002,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCheckmark,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          margin: EdgeInsets.only(
                            left: 1.h,
                            bottom: 2.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "lbl_figmadesi".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 82.v,
              ),
              child: Text(
                "lbl_figmaplugins2".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
