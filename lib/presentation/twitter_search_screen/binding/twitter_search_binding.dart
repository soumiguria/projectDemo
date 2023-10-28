import '../controller/twitter_search_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwitterSearchScreen.
///
/// This class ensures that the TwitterSearchController is created when the
/// TwitterSearchScreen is first loaded.
class TwitterSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwitterSearchController());
  }
}
