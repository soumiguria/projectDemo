import '../../../core/app_export.dart';

/// This class is used in the [twitter_search_item_widget] screen.
class TwitterSearchItemModel {
  TwitterSearchItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
