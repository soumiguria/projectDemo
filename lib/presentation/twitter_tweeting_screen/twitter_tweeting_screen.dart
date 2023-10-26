import 'controller/twitter_tweeting_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/widgets/custom_outlined_button.dart';

class TwitterTweetingScreen extends GetWidget<TwitterTweetingController> {
  const TwitterTweetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 19.h, vertical: 5.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapTxtCancel();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 12.v),
                                    child: Text("lbl_cancel".tr,
                                        style: CustomTextStyles
                                            .bodyLargeBlue400))),
                            CustomOutlinedButton(
                                width: 67.h,
                                text: "lbl_post".tr,
                                margin: EdgeInsets.only(right: 2.h))
                          ])),
                  Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.h, vertical: 4.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRound1,
                                height: 37.adaptSize,
                                width: 37.adaptSize,
                                radius: BorderRadius.circular(18.h),
                                margin: EdgeInsets.only(bottom: 318.v)),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 8.h, bottom: 281.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Container(
                                            width: 76.h,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.h, vertical: 1.v),
                                            decoration: AppDecoration
                                                .outlineBlack90001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_category".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallAbyssinicaSILGray90002_1),
                                                  TextSpan(
                                                      text: "lbl_v".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallAbyssinicaSILBlue400)
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Container(
                                            width: 76.h,
                                            margin: EdgeInsets.only(left: 16.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 18.h,
                                                vertical: 2.v),
                                            decoration: AppDecoration
                                                .outlineBlack90001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_rank".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallAbyssinicaSILBlack90001_1),
                                                  TextSpan(
                                                      text: "lbl_v".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallAbyssinicaSILBlue400)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ]),
                                      SizedBox(height: 2.v),
                                      SizedBox(
                                          width: 204.h,
                                          child: Text(
                                              "msg_share_the_problems".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyLargeActor))
                                    ]))
                          ])),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 8.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCamera,
                                height: 26.adaptSize,
                                width: 26.adaptSize),
                            CustomImageView(
                                imagePath: ImageConstant.imgMedia,
                                height: 78.adaptSize,
                                width: 78.adaptSize,
                                radius: BorderRadius.circular(17.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgMedia78x78,
                                height: 78.adaptSize,
                                width: 78.adaptSize,
                                radius: BorderRadius.circular(17.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgMedia1,
                                height: 78.adaptSize,
                                width: 78.adaptSize,
                                radius: BorderRadius.circular(17.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgMedia78x62,
                                height: 78.v,
                                width: 62.h,
                                radius: BorderRadius.circular(17.h))
                          ])),
                  SizedBox(height: 5.v),
                  CustomImageView(
                      svgPath: ImageConstant.imgButtonsbar,
                      height: 50.v,
                      width: 414.h)
                ]))));
  }

  /// Navigates to the twitterHomeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the twitterHomeContainerScreen.
  onTapTxtCancel() {
    Get.toNamed(
      AppRoutes.twitterHomeContainerScreen,
    );
  }
}
