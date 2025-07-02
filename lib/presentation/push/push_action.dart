import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_action.freezed.dart';

@freezed
sealed class PushAction with _$PushAction {
  factory PushAction.onTextChanged(String value) = OnTextChanged;
}
