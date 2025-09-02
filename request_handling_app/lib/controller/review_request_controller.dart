import 'package:request_handling_app/models/item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_request_controller.g.dart';

@riverpod
class ReviewRequestController extends _$ReviewRequestController {
  @override
  List<ItemModel> build() {
    return [];
  }

  void addItem(ItemModel item) {
    state = [...state, item];
  }

  void removeItem(int index) {
    state.removeAt(index);
    state = List.from(state);
  }

  void submitRequest() {}
}
