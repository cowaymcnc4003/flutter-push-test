// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushState _$PushStateFromJson(Map<String, dynamic> json) => PushState(
      query: json['query'] as String? ?? '2',
      pushSchedule: (json['pushSchedule'] as List<dynamic>?)
              ?.map((e) => PushSchedule.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PushStateToJson(PushState instance) => <String, dynamic>{
      'query': instance.query,
      'pushSchedule': instance.pushSchedule,
    };
