import 'package:push_test_app/domain/model/push_schedule.dart';

abstract interface class PushRepository {
  Future<List<PushSchedule>> getPushSchedules();
  Future<List<PushSchedule>> getPushSchedule(String id);
}
