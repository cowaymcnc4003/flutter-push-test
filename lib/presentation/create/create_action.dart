import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_action.freezed.dart';

@freezed
sealed class CreateAction<T> with _$CreateAction<T>  {
  factory CreateAction.success(T data) = Success;
  factory CreateAction.error(String  e) = Error;
}
