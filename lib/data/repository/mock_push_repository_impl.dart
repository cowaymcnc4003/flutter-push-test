import 'package:push_test_app/domain/model/push_schedule.dart';
import 'package:push_test_app/domain/repository/push_repository.dart';

class MockPushRepositoryImpl implements PushRepository {
  final _mockData = [
    {
      "id": "push001",
      "title": "기상 알림",
      "message": "좋은 아침입니다! 오늘도 화이팅 ☀",
      "platform": "AOS",
      "userId": "user_aos_001",
      "target": "user",
      "scheduleAt": "2025-07-02T07:00:00+09:00",
      "startTime": "2025-07-02T06:55:00+09:00",
      "endTime": "2025-07-02T07:05:00+09:00",
      "repeat": "daily",
      "isSent": false
    },
    {
      "id": "push002",
      "title": "점심시간 알림",
      "message": "점심 먹을 시간이에요 🍱",
      "platform": "AOS",
      "userId": "user_aos_123",
      "target": "user",
      "scheduleAt": "2025-07-02T12:00:00+09:00",
      "startTime": "2025-07-02T11:55:00+09:00",
      "endTime": "2025-07-02T12:05:00+09:00",
      "repeat": "none",
      "isSent": false
    },
    {
      "id": "push003",
      "title": "일정 알림",
      "message": "18시에 운동 일정이 있어요 🏃",
      "platform": "AOS",
      "userId": "user_aos_456",
      "target": "user",
      "scheduleAt": "2025-07-02T18:00:00+09:00",
      "startTime": "2025-07-02T17:55:00+09:00",
      "endTime": "2025-07-02T18:10:00+09:00",
      "repeat": "weekly",
      "isSent": false
    }
  ];
  @override
  Future<List<PushSchedule>> getPushSchedule(String id) async {
    return (await getPushSchedules()).where((e) => e.id == id).toList();
  }

  @override
  Future<List<PushSchedule>> getPushSchedules() async {
    return _mockData.map((e) => PushSchedule.fromJson(e)).toList();
  }
}
