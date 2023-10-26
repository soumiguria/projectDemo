import 'package:flutter/material.dart';
import 'package:soumi_s_application9/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomebutton,
      activeIcon: ImageConstant.imgHomebutton,
      type: BottomBarEnum.Homebutton,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearch,
      activeIcon: ImageConstant.imgSearch,
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCreatepost,
      activeIcon: ImageConstant.imgCreatepost,
      type: BottomBarEnum.Createpost,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMail,
      activeIcon: ImageConstant.imgMail,
      type: BottomBarEnum.Mail,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgRound21x21,
      activeIcon: ImageConstant.imgRound21x21,
      type: BottomBarEnum.Round21x21,
      isPng: true,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray20001,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -0.33,
            ),
          ),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].isPng == true
                    ? null
                    : bottomMenuList[index].icon,
                imagePath: bottomMenuList[index].isPng == true
                    ? bottomMenuList[index].icon
                    : null,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              activeIcon: CustomImageView(
                imagePath: ImageConstant.imgRound21x21,
                height: 21.adaptSize,
                width: 21.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Homebutton,
  Search,
  Createpost,
  Mail,
  Round21x21,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isPng = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
