import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_home_container_screen/models/twitter_home_container_model.dart';

/// A controller class for the TwitterHomeContainerScreen.
///
/// This class manages the state of the TwitterHomeContainerScreen, including the
/// current twitterHomeContainerModelObj
class TwitterHomeContainerController extends GetxController {
  Rx<TwitterHomeContainerModel> twitterHomeContainerModelObj =
      TwitterHomeContainerModel().obs;
}
