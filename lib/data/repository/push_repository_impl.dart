import 'package:firebase_database/firebase_database.dart';
import 'package:push_test_app/domain/model/push_schedule.dart';
import 'package:push_test_app/domain/repository/push_repository.dart';

class PushRepositoryImpl implements PushRepository {
  final DatabaseReference _dbRef =
      FirebaseDatabase.instance.ref('pushSchedules');

  @override
  Future<List<PushSchedule>> getPushSchedule(String id) async {
    final snapshot = await _dbRef
        .orderByChild('id') // 'id' 필드를 기준으로
        .equalTo(id) // 해당 id 값과 같은 것만
        .limitToFirst(1) // 첫 번째 항목만
        .get();

    if (!snapshot.exists || snapshot.value == null) return [];

    final dataMap = Map<String, dynamic>.from(snapshot.value as Map);

    return dataMap.values
        .map((value) => PushSchedule.fromJson(Map<String, dynamic>.from(value)))
        .toList();
  }

  @override
  Future<List<PushSchedule>> getPushSchedules() async {
    final snapshot = await _dbRef.get();
    var dataMap = Map<String, dynamic>.from(snapshot.value as Map);

    return dataMap.values.map(
      (value) {
        return PushSchedule.fromJson(Map<String, dynamic>.from(value));
      },
    ).toList();
  }
}
