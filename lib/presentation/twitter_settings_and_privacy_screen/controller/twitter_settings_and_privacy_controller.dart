import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_settings_and_privacy_screen/models/twitter_settings_and_privacy_model.dart';

/// A controller class for the TwitterSettingsAndPrivacyScreen.
///
/// This class manages the state of the TwitterSettingsAndPrivacyScreen, including the
/// current twitterSettingsAndPrivacyModelObj
class TwitterSettingsAndPrivacyController extends GetxController {
  Rx<TwitterSettingsAndPrivacyModel> twitterSettingsAndPrivacyModelObj =
      TwitterSettingsAndPrivacyModel().obs;
}
