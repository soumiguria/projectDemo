import '../controller/twitter_home_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwitterHomeContainerScreen.
///
/// This class ensures that the TwitterHomeContainerController is created when the
/// TwitterHomeContainerScreen is first loaded.
class TwitterHomeContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwitterHomeContainerController());
  }
}
