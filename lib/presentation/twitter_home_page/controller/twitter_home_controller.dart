import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_home_page/models/twitter_home_model.dart';

/// A controller class for the TwitterHomePage.
///
/// This class manages the state of the TwitterHomePage, including the
/// current twitterHomeModelObj
class TwitterHomeController extends GetxController {
  TwitterHomeController(this.twitterHomeModelObj);

  Rx<TwitterHomeModel> twitterHomeModelObj;
}
