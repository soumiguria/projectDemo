import '../twitter_messages_screen/widgets/usermessage_item_widget.dart';
import 'controller/twitter_messages_controller.dart';
import 'models/usermessage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_home_page/twitter_home_page.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_image.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:soumi_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:soumi_s_application9/widgets/custom_bottom_bar.dart';
import 'package:soumi_s_application9/widgets/custom_search_view.dart';

class TwitterMessagesScreen extends GetWidget<TwitterMessagesController> {
  const TwitterMessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 6.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: CustomAppBar(
                          leadingWidth: 231.h,
                          leading: AppbarCircleimage1(
                              imagePath: ImageConstant.imgRound32x32,
                              margin: EdgeInsets.only(right: 199.h)),
                          title: Container(
                              margin: EdgeInsets.only(
                                  left: 25.h, top: 1.v, bottom: 3.v),
                              decoration: AppDecoration.column9,
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        height: 6.adaptSize,
                                        width: 6.adaptSize,
                                        margin: EdgeInsets.only(right: 200.h),
                                        decoration: BoxDecoration(
                                            color: appTheme.blue400,
                                            borderRadius:
                                                BorderRadius.circular(3.h),
                                            border: Border.all(
                                                color: appTheme.whiteA700,
                                                width: 1.h,
                                                strokeAlign:
                                                    strokeAlignOutside)))),
                                AppbarSubtitle3(
                                    text: "lbl_messages".tr,
                                    margin: EdgeInsets.only(left: 119.h))
                              ])),
                          actions: [
                            AppbarImage(
                                svgPath: ImageConstant.imgSettings,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 22.h, vertical: 5.v),
                                onTap: () {
                                  onTapSettingsone();
                                })
                          ])),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Column(children: [
                            GestureDetector(
                                onTap: () {
                                  onTapSearchbar();
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 15.v),
                                    decoration: AppDecoration.outlineBlueGray,
                                    child: CustomSearchView(
                                        controller: controller.searchController,
                                        hintText: "msg_search_for_people".tr,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                9.h, 9.v, 6.h, 9.v),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSearch)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 32.v),
                                        suffix: Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.h),
                                            child: IconButton(
                                                onPressed: () {
                                                  controller.searchController
                                                      .clear();
                                                },
                                                icon: Icon(Icons.clear,
                                                    color: Colors
                                                        .grey.shade600)))))),
                            SizedBox(height: 1.v),
                            Expanded(
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 1.v);
                                    },
                                    itemCount: controller
                                        .twitterMessagesModelObj
                                        .value
                                        .usermessageItemList
                                        .value
                                        .length,
                                    itemBuilder: (context, index) {
                                      UsermessageItemModel model = controller
                                          .twitterMessagesModelObj
                                          .value
                                          .usermessageItemList
                                          .value[index];
                                      return UsermessageItemWidget(model);
                                    }))),
                            SizedBox(height: 21.v),
                            Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 34.h, vertical: 13.v),
                                decoration: AppDecoration.outlineBluegray20001,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgHomebutton,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 8.h, bottom: 36.v),
                                          onTap: () {
                                            onTapImgHomebuttonone();
                                          }),
                                      Spacer(flex: 24),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgSearch,
                                          height: 19.adaptSize,
                                          width: 19.adaptSize,
                                          margin: EdgeInsets.only(bottom: 36.v),
                                          onTap: () {
                                            onTapImgSearchone();
                                          }),
                                      Spacer(flex: 23),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCreatepost,
                                          height: 23.adaptSize,
                                          width: 23.adaptSize,
                                          margin: EdgeInsets.only(bottom: 34.v),
                                          onTap: () {
                                            onTapImgCreatepostone();
                                          }),
                                      Spacer(flex: 23),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMail,
                                          height: 18.v,
                                          width: 20.h,
                                          margin:
                                              EdgeInsets.only(bottom: 37.v)),
                                      Spacer(flex: 27),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRound21x21,
                                          height: 21.adaptSize,
                                          width: 21.adaptSize,
                                          radius: BorderRadius.circular(10.h),
                                          margin: EdgeInsets.only(bottom: 35.v),
                                          onTap: () {
                                            onTapImgRoundthree();
                                          })
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

  /// Navigates to the twitterSettingsAndPrivacyScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the twitterSettingsAndPrivacyScreen.
  onTapSettingsone() {
    Get.toNamed(
      AppRoutes.twitterSettingsAndPrivacyScreen,
    );
  }

  /// Navigates to the twitterNewMessageScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the twitterNewMessageScreen.
  onTapSearchbar() {
    Get.toNamed(
      AppRoutes.twitterNewMessageScreen,
    );
  }

  /// Navigates to the twitterHomeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the twitterHomeContainerScreen.
  onTapImgHomebuttonone() {
    Get.toNamed(
      AppRoutes.twitterHomeContainerScreen,
    );
  }

  /// Navigates to the twitterSearchScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the twitterSearchScreen.
  onTapImgSearchone() {
    Get.toNamed(
      AppRoutes.twitterSearchScreen,
    );
  }

  /// Navigates to the twitterTweetingScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the twitterTweetingScreen.
  onTapImgCreatepostone() {
    Get.toNamed(
      AppRoutes.twitterTweetingScreen,
    );
  }

  /// Navigates to the twitterProfileTweetsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the twitterProfileTweetsScreen.
  onTapImgRoundthree() {
    Get.toNamed(
      AppRoutes.twitterProfileTweetsScreen,
    );
  }
}
