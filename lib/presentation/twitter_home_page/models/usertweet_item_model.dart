import '../../../core/app_export.dart';

/// This class is used in the [usertweet_item_widget] screen.
class UsertweetItemModel {
  UsertweetItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
