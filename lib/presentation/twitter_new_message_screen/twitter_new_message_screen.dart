import '../twitter_new_message_screen/widgets/userprofile_item_widget.dart';
import 'controller/twitter_new_message_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_image_1.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:soumi_s_application9/widgets/app_bar/custom_app_bar.dart';

class TwitterNewMessageScreen extends GetWidget<TwitterNewMessageController> {
  const TwitterNewMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      decoration: AppDecoration.outlineBlueGray,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.v),
                            CustomAppBar(
                                height: 21.v,
                                leadingWidth: 27.h,
                                leading: AppbarImage1(
                                    svgPath:
                                        ImageConstant.imgArrowleftBlack90001,
                                    margin: EdgeInsets.only(
                                        left: 18.h, bottom: 3.v),
                                    onTap: () {
                                      onTapArrowleftone();
                                    }),
                                centerTitle: true,
                                title:
                                    AppbarSubtitle(text: "lbl_new_message".tr))
                          ])),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Column(children: [
                            Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 9.v),
                                decoration: AppDecoration.outlineBlueGray,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgSearch,
                                          height: 13.adaptSize,
                                          width: 13.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 6.v, bottom: 5.v)),
                                      Container(
                                          height: 21.v,
                                          width: 227.h,
                                          margin: EdgeInsets.only(
                                              left: 15.h, top: 3.v),
                                          child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        "msg_search_for_people"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyLarge17)),
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h),
                                                        child: SizedBox(
                                                            height: 19.v,
                                                            child: VerticalDivider(
                                                                width: 2.h,
                                                                thickness: 2.v,
                                                                color: appTheme
                                                                    .blue400))))
                                              ]))
                                    ])),
                            Expanded(
                                child: Obx(() => ListView.separated(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 1.v);
                                    },
                                    itemCount: controller
                                        .twitterNewMessageModelObj
                                        .value
                                        .userprofileItemList
                                        .value
                                        .length,
                                    itemBuilder: (context, index) {
                                      UserprofileItemModel model = controller
                                          .twitterNewMessageModelObj
                                          .value
                                          .userprofileItemList
                                          .value[index];
                                      return UserprofileItemWidget(model);
                                    })))
                          ])))
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
