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
  final String scheduleAt;
  final String startTime;
  final String endTime;
  final String repeat;
  final bool isSent;

  const PushSchedule({
    required this.id,
    required this.title,
    required this.message,
    required this.platform,
    required this.userId,
    required this.target,
    required this.scheduleAt,
    required this.startTime,
    required this.endTime,
    required this.repeat,
    required this.isSent,
  });

  factory PushSchedule.fromJson(Map<String, dynamic> json) =>
      _$PushScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$PushScheduleToJson(this);
}
