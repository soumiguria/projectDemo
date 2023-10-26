import '../../../core/app_export.dart';

/// This class is used in the [usermessage_item_widget] screen.
class UsermessageItemModel {
  UsermessageItemModel({
    this.date,
    this.message,
    this.id,
  }) {
    date = date ?? Rx("12/2/19");
    message = message ?? Rx("You: You’re very welcome AzizDjan!");
    id = id ?? Rx("");
  }

  Rx<String>? date;

  Rx<String>? message;

  Rx<String>? id;
}
