import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:request_handling_app/models/item_model.dart';
import 'package:request_handling_app/services/requests_server_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_request_controller.g.dart';

@riverpod
class ReviewRequestController extends _$ReviewRequestController {
  final RequestsServerServices _requestsServer = RequestsServerServices();

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

  void submitRequest() async {
    final Map<String, Object?> newRequest = {
      "items": state.map((e) => Map.from(e.toJson())).toList(),
    };
    await _requestsServer.createNewRequest(newRequest);
  }
}
