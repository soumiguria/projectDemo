import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_tweeting_screen/models/twitter_tweeting_model.dart';

/// A controller class for the TwitterTweetingScreen.
///
/// This class manages the state of the TwitterTweetingScreen, including the
/// current twitterTweetingModelObj
class TwitterTweetingController extends GetxController {
  Rx<TwitterTweetingModel> twitterTweetingModelObj = TwitterTweetingModel().obs;
}
