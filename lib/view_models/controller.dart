import 'package:get/get.dart';

import '../models/record.dart';

class Controller extends GetxController {
  var records = <Record>[
    /* Record(dateTime: DateTime.now(), weigth: 80, note: 'AAA'),
    Record(dateTime: DateTime.now(), weigth: 81, note: 'BBB'),
    Record(dateTime: DateTime.now(), weigth: 82, note: 'CCC'),
    Record(dateTime: DateTime.now(), weigth: 83, note: 'DDD'),*/
  ].obs;

  void addRecord() {
    records.add(
      Record(dateTime: DateTime.now(), weigth: 80, note: 'XXXXX'),
    );
  }

  void deleteRecord(Record record) {
    records.remove(record);
  }
}
