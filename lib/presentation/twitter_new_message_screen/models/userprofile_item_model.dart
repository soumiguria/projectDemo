import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userName,
    this.userAlias,
    this.id,
  }) {
    userName = userName ?? Rx("AzizDjan");
    userAlias = userAlias ?? Rx("A_AzizDjan");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? userAlias;

  Rx<String>? id;
}
