import 'package:demo_remote_config/domain/entity/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cake_state.freezed.dart';

@freezed
abstract class CakeState with _$CakeState {
  const factory CakeState(List<CategoryModel> categories) = CakeStateData;
  const factory CakeState.loading() = CakeStateLoading;
  const factory CakeState.error(dynamic error) = CakeStateError;
}