import '../controller/twitter_settings_and_privacy_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwitterSettingsAndPrivacyScreen.
///
/// This class ensures that the TwitterSettingsAndPrivacyController is created when the
/// TwitterSettingsAndPrivacyScreen is first loaded.
class TwitterSettingsAndPrivacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwitterSettingsAndPrivacyController());
  }
}
