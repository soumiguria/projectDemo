import '../twitter_search_screen/widgets/twitter_search_item_widget.dart';
import 'controller/twitter_search_controller.dart';
import 'models/twitter_search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_searchview.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:soumi_s_application9/widgets/app_bar/custom_app_bar.dart';

class TwitterSearchScreen extends GetWidget<TwitterSearchController> {
  const TwitterSearchScreen({Key? key}) : super(key: key);

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
                      decoration: AppDecoration.outlineBlueGray,
                      child: CustomAppBar(
                          title: AppbarSearchview(
                              margin: EdgeInsets.only(left: 20.h),
                              hintText: "lbl_search_twitter".tr,
                              controller: controller.searchController),
                          actions: [
                            AppbarSubtitle4(
                                text: "lbl_cancel".tr,
                                margin:
                                    EdgeInsets.fromLTRB(16.h, 5.v, 20.h, 5.v),
                                onTap: () {
                                  onTapCancel();
                                })
                          ])),
                  Column(children: [
                    Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 11.v),
                        decoration: AppDecoration.background,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("lbl_recent_searches".tr,
                                      style: CustomTextStyles
                                          .titleMediumBluegray500)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: 9.adaptSize,
                                  width: 9.adaptSize)
                            ])),
                    SizedBox(height: 5.v),
                    Expanded(
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.v),
                                decoration: AppDecoration.outlineBluegray1001,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 2.v),
                                      Expanded(
                                          child: SizedBox(
                                              height: 115.v,
                                              child: Obx(() =>
                                                  ListView.separated(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            width: 415.0.h,
                                                            child: Divider(
                                                                height: 1.v,
                                                                thickness: 1.v,
                                                                color: appTheme
                                                                    .blueGray100,
                                                                indent: 0.5.h,
                                                                endIndent:
                                                                    0.5.h));
                                                      },
                                                      itemCount: controller
                                                          .twitterSearchModelObj
                                                          .value
                                                          .twitterSearchItemList
                                                          .value
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        TwitterSearchItemModel
                                                            model = controller
                                                                .twitterSearchModelObj
                                                                .value
                                                                .twitterSearchItemList
                                                                .value[index];
                                                        return TwitterSearchItemWidget(
                                                            model);
                                                      })))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h,
                                              top: 11.v,
                                              right: 24.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_skhasanov".tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeGray90002),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgFile,
                                                    height: 11.adaptSize,
                                                    width: 11.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 5.v, bottom: 3.v))
                                              ]))
                                    ]))))
                  ])
                ]))));
  }

  /// Navigates to the twitterHomeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the twitterHomeContainerScreen.
  onTapCancel() {
    Get.toNamed(
      AppRoutes.twitterHomeContainerScreen,
    );
  }
}
