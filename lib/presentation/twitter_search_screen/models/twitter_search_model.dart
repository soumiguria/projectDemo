import '../../../core/app_export.dart';
import 'twitter_search_item_model.dart';

/// This class defines the variables used in the [twitter_search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TwitterSearchModel {
  Rx<List<TwitterSearchItemModel>> twitterSearchItemList =
      Rx(List.generate(1, (index) => TwitterSearchItemModel()));
}
