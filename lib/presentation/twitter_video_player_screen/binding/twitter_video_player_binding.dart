import '../controller/twitter_video_player_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwitterVideoPlayerScreen.
///
/// This class ensures that the TwitterVideoPlayerController is created when the
/// TwitterVideoPlayerScreen is first loaded.
class TwitterVideoPlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwitterVideoPlayerController());
  }
}
