import '../controller/twitter_profile_tweets_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwitterProfileTweetsScreen.
///
/// This class ensures that the TwitterProfileTweetsController is created when the
/// TwitterProfileTweetsScreen is first loaded.
class TwitterProfileTweetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwitterProfileTweetsController());
  }
}
