import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_new_message_screen/models/twitter_new_message_model.dart';

/// A controller class for the TwitterNewMessageScreen.
///
/// This class manages the state of the TwitterNewMessageScreen, including the
/// current twitterNewMessageModelObj
class TwitterNewMessageController extends GetxController {
  Rx<TwitterNewMessageModel> twitterNewMessageModelObj =
      TwitterNewMessageModel().obs;
}
