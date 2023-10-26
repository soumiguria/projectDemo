import '../controller/twitter_new_message_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwitterNewMessageScreen.
///
/// This class ensures that the TwitterNewMessageController is created when the
/// TwitterNewMessageScreen is first loaded.
class TwitterNewMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwitterNewMessageController());
  }
}
