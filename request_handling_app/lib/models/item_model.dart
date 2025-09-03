import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';

part 'item_model.g.dart';

@freezed
abstract class ItemModel with _$ItemModel {
  @JsonSerializable()
  const factory ItemModel({required String name, required int quantity}) =
      _ItemModel;

  factory ItemModel.fromJson(Map<String, Object?> json) =>
      _$ItemModelFromJson(json);
}
