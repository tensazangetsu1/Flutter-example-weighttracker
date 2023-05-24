import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weighttracker/models/record.dart';
import 'package:weighttracker/view_models/controller.dart';
import 'package:weighttracker/widgets/record_listile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<Record> records = _controller.records;

    return Obx(() => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('History'),
        ),
        body: records.isEmpty
            ? Center(
                child: Container(
                  child: const Text('Please Add Some Records'),
                ),
              )
            : ListView(
                physics: const BouncingScrollPhysics(),
                children: records
                    .map((record) => RecordListTile(record: record))
                    .toList())));
  }
}
