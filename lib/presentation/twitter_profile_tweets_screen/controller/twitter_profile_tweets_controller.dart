import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_profile_tweets_screen/models/twitter_profile_tweets_model.dart';

/// A controller class for the TwitterProfileTweetsScreen.
///
/// This class manages the state of the TwitterProfileTweetsScreen, including the
/// current twitterProfileTweetsModelObj
class TwitterProfileTweetsController extends GetxController {
  Rx<TwitterProfileTweetsModel> twitterProfileTweetsModelObj =
      TwitterProfileTweetsModel().obs;
}
