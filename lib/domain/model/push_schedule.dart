import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_schedule.freezed.dart';
part 'push_schedule.g.dart';

// ignore_for_file: annotate_overrides
@freezed
@JsonSerializable()
class PushSchedule with _$PushSchedule {
  final String id;
  final String title;
  final String message;
  final String platform;
  final String userId;
  final String target;
  final DateTime scheduleAt;
  final DateTime startTime;
  final DateTime endTime;
  final String repeat;
  final bool isSent;

  const PushSchedule({
    required this.id,
    required this.title,
    required this.message,
    required this.platform,
    required this.userId,
    required this.scheduleAt,
    required this.target,
    required this.startTime,
    required this.repeat,
    required this.endTime,
    required this.isSent,
  });

  factory PushSchedule.fromJson(Map<String, dynamic> json) =>
      _$PushScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$PushScheduleToJson(this);
}
