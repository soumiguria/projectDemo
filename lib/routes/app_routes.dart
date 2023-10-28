import 'package:soumi_s_application9/presentation/twitter_home_container_screen/twitter_home_container_screen.dart';
import 'package:soumi_s_application9/presentation/twitter_home_container_screen/binding/twitter_home_container_binding.dart';
import 'package:soumi_s_application9/presentation/twitter_tweeting_screen/twitter_tweeting_screen.dart';
import 'package:soumi_s_application9/presentation/twitter_tweeting_screen/binding/twitter_tweeting_binding.dart';
import 'package:soumi_s_application9/presentation/twitter_search_screen/twitter_search_screen.dart';
import 'package:soumi_s_application9/presentation/twitter_search_screen/binding/twitter_search_binding.dart';
import 'package:soumi_s_application9/presentation/twitter_messages_screen/twitter_messages_screen.dart';
import 'package:soumi_s_application9/presentation/twitter_messages_screen/binding/twitter_messages_binding.dart';
import 'package:soumi_s_application9/presentation/twitter_profile_tweets_screen/twitter_profile_tweets_screen.dart';
import 'package:soumi_s_application9/presentation/twitter_profile_tweets_screen/binding/twitter_profile_tweets_binding.dart';
import 'package:soumi_s_application9/presentation/twitter_video_player_screen/twitter_video_player_screen.dart';
import 'package:soumi_s_application9/presentation/twitter_video_player_screen/binding/twitter_video_player_binding.dart';
import 'package:soumi_s_application9/presentation/twitter_settings_and_privacy_screen/twitter_settings_and_privacy_screen.dart';
import 'package:soumi_s_application9/presentation/twitter_settings_and_privacy_screen/binding/twitter_settings_and_privacy_binding.dart';
import 'package:soumi_s_application9/presentation/twitter_new_message_screen/twitter_new_message_screen.dart';
import 'package:soumi_s_application9/presentation/twitter_new_message_screen/binding/twitter_new_message_binding.dart';
import 'package:soumi_s_application9/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:soumi_s_application9/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String twitterHomePage = '/twitter_home_page';

  static const String twitterHomeContainerScreen =
      '/twitter_home_container_screen';

  static const String twitterTweetingScreen = '/twitter_tweeting_screen';

  static const String twitterSearchScreen = '/twitter_search_screen';

  static const String twitterMessagesScreen = '/twitter_messages_screen';

  static const String twitterProfileTweetsScreen =
      '/twitter_profile_tweets_screen';

  static const String twitterVideoPlayerScreen = '/twitter_video_player_screen';

  static const String twitterSettingsAndPrivacyScreen =
      '/twitter_settings_and_privacy_screen';

  static const String twitterNewMessageScreen = '/twitter_new_message_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: twitterHomeContainerScreen,
      page: () => TwitterHomeContainerScreen(),
      bindings: [
        TwitterHomeContainerBinding(),
      ],
    ),
    GetPage(
      name: twitterTweetingScreen,
      page: () => TwitterTweetingScreen(),
      bindings: [
        TwitterTweetingBinding(),
      ],
    ),
    GetPage(
      name: twitterSearchScreen,
      page: () => TwitterSearchScreen(),
      bindings: [
        TwitterSearchBinding(),
      ],
    ),
    GetPage(
      name: twitterMessagesScreen,
      page: () => TwitterMessagesScreen(),
      bindings: [
        TwitterMessagesBinding(),
      ],
    ),
    GetPage(
      name: twitterProfileTweetsScreen,
      page: () => TwitterProfileTweetsScreen(),
      bindings: [
        TwitterProfileTweetsBinding(),
      ],
    ),
    GetPage(
      name: twitterVideoPlayerScreen,
      page: () => TwitterVideoPlayerScreen(),
      bindings: [
        TwitterVideoPlayerBinding(),
      ],
    ),
    GetPage(
      name: twitterSettingsAndPrivacyScreen,
      page: () => TwitterSettingsAndPrivacyScreen(),
      bindings: [
        TwitterSettingsAndPrivacyBinding(),
      ],
    ),
    GetPage(
      name: twitterNewMessageScreen,
      page: () => TwitterNewMessageScreen(),
      bindings: [
        TwitterNewMessageBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => TwitterHomeContainerScreen(),
      bindings: [
        TwitterHomeContainerBinding(),
      ],
    )
  ];
}
