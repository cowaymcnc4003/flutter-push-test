// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushSchedule _$PushScheduleFromJson(Map<String, dynamic> json) => PushSchedule(
      id: json['id'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      platform: json['platform'] as String,
      userId: json['userId'] as String,
      scheduleAt: DateTime.parse(json['scheduleAt'] as String),
      target: json['target'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      repeat: json['repeat'] as String,
      endTime: DateTime.parse(json['endTime'] as String),
      isSent: json['isSent'] as bool,
    );

Map<String, dynamic> _$PushScheduleToJson(PushSchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'platform': instance.platform,
      'userId': instance.userId,
      'target': instance.target,
      'scheduleAt': instance.scheduleAt.toIso8601String(),
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'repeat': instance.repeat,
      'isSent': instance.isSent,
    };
