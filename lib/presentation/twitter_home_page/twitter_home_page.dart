import '../twitter_home_page/widgets/usertweet_item_widget.dart';
import 'controller/twitter_home_controller.dart';
import 'models/twitter_home_model.dart';
import 'models/usertweet_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_circleimage.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:soumi_s_application9/widgets/app_bar/appbar_subtitle_6.dart';
import 'package:soumi_s_application9/widgets/app_bar/custom_app_bar.dart';

class TwitterHomePage extends StatelessWidget {
  TwitterHomePage({Key? key})
      : super(
          key: key,
        );

  TwitterHomeController controller =
      Get.put(TwitterHomeController(TwitterHomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              Container(
                decoration: AppDecoration.outlineBlueGray,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 7.v),
                    CustomAppBar(
                      height: 37.v,
                      leadingWidth: 60.h,
                      leading: AppbarCircleimage(
                        imagePath: ImageConstant.imgRound,
                        margin: EdgeInsets.only(left: 23.h),
                      ),
                      title: Container(
                        height: 27.v,
                        width: 74.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    TextSpan(
                                      text: "lbl_vasi2".tr,
                                      style: CustomTextStyles.titleLarge_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    TextSpan(
                                      text: "lbl_vasi2".tr,
                                      style: CustomTextStyles.titleLarge_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        Container(
                          margin: EdgeInsets.fromLTRB(21.h, 6.v, 21.h, 8.v),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 6.v,
                          ),
                          decoration: AppDecoration.outlineBlue.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppbarSubtitle6(
                                text: "lbl_local_haalchal".tr,
                                margin: EdgeInsets.only(
                                  left: 1.h,
                                  bottom: 1.v,
                                ),
                              ),
                              AppbarSubtitle5(
                                text: "lbl_v".tr,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 1.v,
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
              Expanded(
                child: Obx(
                  () => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: 1.v,
                      );
                    },
                    itemCount: controller.twitterHomeModelObj.value
                        .usertweetItemList.value.length,
                    itemBuilder: (context, index) {
                      UsertweetItemModel model = controller.twitterHomeModelObj
                          .value.usertweetItemList.value[index];
                      return UsertweetItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
