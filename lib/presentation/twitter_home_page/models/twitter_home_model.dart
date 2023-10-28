import '../../../core/app_export.dart';
import 'usertweet_item_model.dart';

/// This class defines the variables used in the [twitter_home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TwitterHomeModel {
  Rx<List<UsertweetItemModel>> usertweetItemList =
      Rx(List.generate(2, (index) => UsertweetItemModel()));
}
