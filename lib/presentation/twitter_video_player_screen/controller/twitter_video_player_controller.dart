import 'package:soumi_s_application9/core/app_export.dart';
import 'package:soumi_s_application9/presentation/twitter_video_player_screen/models/twitter_video_player_model.dart';

/// A controller class for the TwitterVideoPlayerScreen.
///
/// This class manages the state of the TwitterVideoPlayerScreen, including the
/// current twitterVideoPlayerModelObj
class TwitterVideoPlayerController extends GetxController {
  Rx<TwitterVideoPlayerModel> twitterVideoPlayerModelObj =
      TwitterVideoPlayerModel().obs;
}
