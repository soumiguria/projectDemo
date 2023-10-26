import 'controller/twitter_profile_tweets_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_home_page/twitter_home_page.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_iconbutton.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:soumi_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:soumi_s_application9/widgets/custom_bottom_bar.dart';
import 'package:soumi_s_application9/widgets/custom_outlined_button.dart';

class TwitterProfileTweetsScreen
    extends GetWidget<TwitterProfileTweetsController> {
  const TwitterProfileTweetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 316.v,
                      width: double.maxFinite,
                      child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 6.v),
                                    decoration: AppDecoration.fillGray,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 47.v),
                                          CustomAppBar(
                                              height: 34.v,
                                              leadingWidth: 52.h,
                                              leading: AppbarIconbutton(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  margin: EdgeInsets.only(
                                                      left: 20.h, bottom: 2.v),
                                                  onTap: () {
                                                    onTapArrowleftone();
                                                  }),
                                              centerTitle: true,
                                              title: AppbarTitle(
                                                  text:
                                                      "msg_digital_goodies".tr))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                    height: 245.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  decoration:
                                                      AppDecoration.fillWhiteA,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomOutlinedButton(
                                                            height: 32.v,
                                                            width: 93.h,
                                                            text:
                                                                "lbl_edit_profile"
                                                                    .tr,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 11.v,
                                                                    right:
                                                                        21.h),
                                                            buttonStyle:
                                                                CustomButtonStyles
                                                                    .outlineBlue,
                                                            buttonTextStyle:
                                                                CustomTextStyles
                                                                    .titleSmallBlue400,
                                                            alignment: Alignment
                                                                .centerRight),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 20.h,
                                                                    top: 11.v),
                                                            child: Text(
                                                                "lbl_pixsellz"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleLargeSFProTextGray90002)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 20.h,
                                                                    top: 4.v),
                                                            child: Text(
                                                                "lbl_pixsellz2"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)),
                                                        Container(
                                                            width: 317.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 20.h,
                                                                    top: 13.v,
                                                                    right:
                                                                        76.h),
                                                            child: Text(
                                                                "msg_digital_goodies2"
                                                                    .tr,
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: CustomTextStyles
                                                                    .bodyLargeGray90002
                                                                    .copyWith(
                                                                        height:
                                                                            1.31))),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 20.h,
                                                                    top: 6.v),
                                                            child: Row(
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgLink,
                                                                      height: 14
                                                                          .adaptSize,
                                                                      width: 14
                                                                          .adaptSize),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 4
                                                                              .h),
                                                                      child: Text(
                                                                          "lbl_pixsellz_io"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodyMediumBlue400)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCalendar,
                                                                      height: 14
                                                                          .adaptSize,
                                                                      width: 14
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              13.h)),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 4
                                                                              .h),
                                                                      child: Text(
                                                                          "msg_joined_september"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium))
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 20.h,
                                                                    top: 12.v),
                                                            child: Row(
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: 1
                                                                              .v),
                                                                      child: Text(
                                                                          "lbl_217_following"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium)),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              10.h),
                                                                      child: RichText(
                                                                          text: TextSpan(children: [
                                                                            TextSpan(
                                                                                text: "lbl_118".tr,
                                                                                style: CustomTextStyles.titleSmallGray90002),
                                                                            TextSpan(text: " "),
                                                                            TextSpan(
                                                                                text: "lbl_followers".tr,
                                                                                style: theme.textTheme.bodyMedium)
                                                                          ]),
                                                                          textAlign: TextAlign.left))
                                                                ])),
                                                        SizedBox(height: 5.v),
                                                        Divider()
                                                      ]))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgPrimaryaccount,
                                              height: 68.adaptSize,
                                              width: 68.adaptSize,
                                              radius:
                                                  BorderRadius.circular(34.h),
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  EdgeInsets.only(left: 20.h))
                                        ])))
                          ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 23.h, vertical: 9.v),
                        decoration: AppDecoration.outlineBlack900011,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 7.v, right: 77.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRound37x37,
                                        height: 37.adaptSize,
                                        width: 37.adaptSize,
                                        radius: BorderRadius.circular(18.h)),
                                    Expanded(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 19.h, bottom: 2.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        2.v),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "lbl_martha_craig2"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodyMediumAbrilFatfaceGray90002),
                                                                      TextSpan(
                                                                          text:
                                                                              " ")
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 18.h),
                                                            child: Text(
                                                                "lbl_5".tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeAbrilFatfaceLightgreen800)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgStar18288841,
                                                            height:
                                                                11.adaptSize,
                                                            width: 11.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    bottom:
                                                                        5.v)),
                                                        Container(
                                                            margin: EdgeInsets.only(
                                                                left: 9.h,
                                                                top: 4.v,
                                                                bottom: 5.v),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        3.h,
                                                                    vertical:
                                                                        1.v),
                                                            decoration: AppDecoration
                                                                .outlineBlue
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder5),
                                                            child: Text(
                                                                "lbl_environment"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .abyssinicaSILGray90002)),
                                                        Container(
                                                            margin: EdgeInsets.only(
                                                                left: 9.h,
                                                                top: 4.v,
                                                                bottom: 5.v),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        8.h,
                                                                    vertical:
                                                                        1.v),
                                                            decoration: AppDecoration
                                                                .outlineBlack90001
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder5),
                                                            child: Text(
                                                                "lbl_moderate"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .abyssinicaSILYellow900))
                                                      ]),
                                                  Row(children: [
                                                    RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "lbl_craig_love"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallAbrilFatface),
                                                          TextSpan(
                                                              text: "lbl2".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallAbrilFatface),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_12h".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallAbrilFatface)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPlaceholder819865,
                                                        height: 11.adaptSize,
                                                        width: 11.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 28.h)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.h),
                                                        child: Text(
                                                            "lbl_new_delhi".tr,
                                                            style: CustomTextStyles
                                                                .abyssinicaSILGray90002))
                                                  ])
                                                ])))
                                  ])),
                              Container(
                                  width: 354.h,
                                  margin:
                                      EdgeInsets.only(top: 9.v, right: 13.h),
                                  child: Text("msg_there_has_been_reported".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallActorGray90002
                                          .copyWith(height: 1.71))),
                              Container(
                                  margin: EdgeInsets.only(top: 6.v, right: 1.h),
                                  decoration: AppDecoration.outlineBluegray100
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgImage,
                                      height: 208.v,
                                      width: 367.h,
                                      radius: BorderRadius.circular(12.h))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 49.h, top: 8.v, right: 49.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrow43744721,
                                                height: 14.adaptSize,
                                                width: 14.adaptSize),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3.h),
                                                child: Text("lbl_28".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrow43744722,
                                                height: 14.adaptSize,
                                                width: 14.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 49.h)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3.h),
                                                child: Text("lbl_28".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgReply,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 48.h)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 1.h),
                                                child: Text("lbl_21".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgContrast,
                                                height: 14.v,
                                                width: 15.h),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3.h),
                                                child: Text("lbl_5".tr,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ])))
                            ])),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 23.h, vertical: 9.v),
                        decoration: AppDecoration.outlineBlack900011,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 7.v, right: 77.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRound37x37,
                                        height: 37.adaptSize,
                                        width: 37.adaptSize,
                                        radius: BorderRadius.circular(18.h)),
                                    Expanded(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 19.h, bottom: 2.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        2.v),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "lbl_martha_craig2"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodyMediumAbrilFatfaceGray90002),
                                                                      TextSpan(
                                                                          text:
                                                                              " ")
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 18.h),
                                                            child: Text(
                                                                "lbl_5".tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeAbrilFatfaceLightgreen800)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgStar18288841,
                                                            height:
                                                                11.adaptSize,
                                                            width: 11.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    bottom:
                                                                        5.v)),
                                                        Container(
                                                            margin: EdgeInsets.only(
                                                                left: 9.h,
                                                                top: 4.v,
                                                                bottom: 5.v),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        3.h,
                                                                    vertical:
                                                                        1.v),
                                                            decoration: AppDecoration
                                                                .outlineBlue
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder5),
                                                            child: Text(
                                                                "lbl_environment"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .abyssinicaSILGray90002)),
                                                        Container(
                                                            margin: EdgeInsets.only(
                                                                left: 9.h,
                                                                top: 4.v,
                                                                bottom: 5.v),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        8.h,
                                                                    vertical:
                                                                        1.v),
                                                            decoration: AppDecoration
                                                                .outlineBlack90001
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder5),
                                                            child: Text(
                                                                "lbl_moderate"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .abyssinicaSILYellow900))
                                                      ]),
                                                  Row(children: [
                                                    RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "lbl_craig_love"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallAbrilFatface),
                                                          TextSpan(
                                                              text: "lbl2".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallAbrilFatface),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_12h".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallAbrilFatface)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPlaceholder819865,
                                                        height: 11.adaptSize,
                                                        width: 11.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 28.h)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.h),
                                                        child: Text(
                                                            "lbl_new_delhi".tr,
                                                            style: CustomTextStyles
                                                                .abyssinicaSILGray90002))
                                                  ])
                                                ])))
                                  ])),
                              Container(
                                  width: 354.h,
                                  margin:
                                      EdgeInsets.only(top: 9.v, right: 13.h),
                                  child: Text("msg_there_has_been_reported".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallActorGray90002
                                          .copyWith(height: 1.71))),
                              Container(
                                  margin: EdgeInsets.only(top: 6.v, right: 1.h),
                                  decoration: AppDecoration.outlineBluegray100
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgImage,
                                      height: 208.v,
                                      width: 367.h,
                                      radius: BorderRadius.circular(12.h))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 49.h, top: 8.v, right: 49.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrow43744721,
                                                height: 14.adaptSize,
                                                width: 14.adaptSize,
                                                margin:
                                                    EdgeInsets.only(top: 1.v)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 3.h, top: 1.v),
                                                child: Text("lbl_28".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrow43744722,
                                                height: 14.adaptSize,
                                                width: 14.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 49.h, top: 1.v)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 3.h, top: 1.v),
                                                child: Text("lbl_28".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgReply,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 48.h)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 1.h, top: 1.v),
                                                child: Text("lbl_21".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgContrast,
                                                height: 14.v,
                                                width: 15.h,
                                                margin: EdgeInsets.only(
                                                    left: 50.h, top: 1.v)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 3.h, top: 1.v),
                                                child: Text("lbl_5".tr,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ])))
                            ]))
                  ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homebutton:
        return "/";
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Createpost:
        return "/";
      case BottomBarEnum.Mail:
        return "/";
      case BottomBarEnum.Round21x21:
        return AppRoutes.twitterHomePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.twitterHomePage:
        return TwitterHomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
