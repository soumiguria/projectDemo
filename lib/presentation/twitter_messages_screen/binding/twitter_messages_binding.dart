import '../controller/twitter_messages_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwitterMessagesScreen.
///
/// This class ensures that the TwitterMessagesController is created when the
/// TwitterMessagesScreen is first loaded.
class TwitterMessagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwitterMessagesController());
  }
}
