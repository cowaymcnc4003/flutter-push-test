// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PushAction {
  String get value;

  /// Create a copy of PushAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PushActionCopyWith<PushAction> get copyWith =>
      _$PushActionCopyWithImpl<PushAction>(this as PushAction, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PushAction &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'PushAction(value: $value)';
  }
}

/// @nodoc
abstract mixin class $PushActionCopyWith<$Res> {
  factory $PushActionCopyWith(
          PushAction value, $Res Function(PushAction) _then) =
      _$PushActionCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$PushActionCopyWithImpl<$Res> implements $PushActionCopyWith<$Res> {
  _$PushActionCopyWithImpl(this._self, this._then);

  final PushAction _self;
  final $Res Function(PushAction) _then;

  /// Create a copy of PushAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class OnTextChanged implements PushAction {
  OnTextChanged(this.value);

  @override
  final String value;

  /// Create a copy of PushAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnTextChangedCopyWith<OnTextChanged> get copyWith =>
      _$OnTextChangedCopyWithImpl<OnTextChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnTextChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'PushAction.onTextChanged(value: $value)';
  }
}

/// @nodoc
abstract mixin class $OnTextChangedCopyWith<$Res>
    implements $PushActionCopyWith<$Res> {
  factory $OnTextChangedCopyWith(
          OnTextChanged value, $Res Function(OnTextChanged) _then) =
      _$OnTextChangedCopyWithImpl;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$OnTextChangedCopyWithImpl<$Res>
    implements $OnTextChangedCopyWith<$Res> {
  _$OnTextChangedCopyWithImpl(this._self, this._then);

  final OnTextChanged _self;
  final $Res Function(OnTextChanged) _then;

  /// Create a copy of PushAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(OnTextChanged(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
