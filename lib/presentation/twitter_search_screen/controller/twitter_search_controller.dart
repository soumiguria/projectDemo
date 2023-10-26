import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_search_screen/models/twitter_search_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TwitterSearchScreen.
///
/// This class manages the state of the TwitterSearchScreen, including the
/// current twitterSearchModelObj
class TwitterSearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<TwitterSearchModel> twitterSearchModelObj = TwitterSearchModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
