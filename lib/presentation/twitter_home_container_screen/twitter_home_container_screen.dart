import 'controller/twitter_home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_home_page/twitter_home_page.dart';
import 'package:soumi_s_application9/widgets/custom_bottom_bar.dart';

class TwitterHomeContainerScreen
    extends GetWidget<TwitterHomeContainerController> {
  const TwitterHomeContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.twitterHomePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
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
}
