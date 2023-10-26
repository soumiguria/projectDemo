import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_messages_screen/models/twitter_messages_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TwitterMessagesScreen.
///
/// This class manages the state of the TwitterMessagesScreen, including the
/// current twitterMessagesModelObj
class TwitterMessagesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<TwitterMessagesModel> twitterMessagesModelObj = TwitterMessagesModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
