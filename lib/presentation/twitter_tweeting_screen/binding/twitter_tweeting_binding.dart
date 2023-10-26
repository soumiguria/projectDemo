import '../controller/twitter_tweeting_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwitterTweetingScreen.
///
/// This class ensures that the TwitterTweetingController is created when the
/// TwitterTweetingScreen is first loaded.
class TwitterTweetingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwitterTweetingController());
  }
}
