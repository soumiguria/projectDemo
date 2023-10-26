import '../controller/twitter_home_controller.dart';
import '../models/usertweet_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class UsertweetItemWidget extends StatelessWidget {
  UsertweetItemWidget(
    this.usertweetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsertweetItemModel usertweetItemModelObj;

  var controller = Get.find<TwitterHomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              right: 77.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRound37x37,
                  height: 37.adaptSize,
                  width: 37.adaptSize,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.v),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_martha_craig2".tr,
                                      style: CustomTextStyles
                                          .bodyMediumAbrilFatfaceGray90002,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Text(
                                "lbl_5".tr,
                                style: CustomTextStyles
                                    .bodyLargeAbrilFatfaceLightgreen800,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgStar18288841,
                              height: 11.adaptSize,
                              width: 11.adaptSize,
                              margin: EdgeInsets.only(
                                top: 4.v,
                                bottom: 5.v,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 9.h,
                                top: 4.v,
                                bottom: 5.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 3.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.outlineBlue.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Text(
                                "lbl_environment".tr,
                                style: CustomTextStyles.abyssinicaSILGray90002,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 9.h,
                                top: 4.v,
                                bottom: 5.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.h,
                                vertical: 1.v,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack90001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Text(
                                "lbl_moderate".tr,
                                style: CustomTextStyles.abyssinicaSILYellow900,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_craig_love".tr,
                                    style:
                                        CustomTextStyles.bodySmallAbrilFatface,
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style:
                                        CustomTextStyles.bodySmallAbrilFatface,
                                  ),
                                  TextSpan(
                                    text: "lbl_12h".tr,
                                    style:
                                        CustomTextStyles.bodySmallAbrilFatface,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPlaceholder819865,
                              height: 11.adaptSize,
                              width: 11.adaptSize,
                              margin: EdgeInsets.only(left: 28.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "lbl_new_delhi".tr,
                                style: CustomTextStyles.abyssinicaSILGray90002,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              right: 13.h,
            ),
            child: Text(
              "msg_there_has_been_reported".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallActorGray90002.copyWith(
                height: 1.71,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 6.v,
              right: 1.h,
            ),
            decoration: AppDecoration.outlineBluegray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 208.v,
              width: 367.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 49.h,
                top: 8.v,
                right: 49.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrow43744721,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_28".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrow43744722,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 49.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_28".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgReply,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(left: 48.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "lbl_21".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgContrast,
                    height: 14.v,
                    width: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_5".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
