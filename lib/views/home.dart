import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weighttracker/views/add_record.dart';
import 'package:weighttracker/views/graph.dart';
import 'package:weighttracker/views/history.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int _currentTab = 0;
  Widget _currentScreen = const GraphScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("TRACK YOUR WEIGHT")),
      //body: const GraphScreen(),
      body: _currentScreen,

      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Get.to(() => const AddRecordView());
          },
          child: const Icon(Icons.add)),
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          height: Get.height / 12,
          activeColor: Colors.white,
          inactiveColor: Colors.grey,
          gapLocation: GapLocation.center,
          backgroundColor: Colors.black,
          icons: const [Icons.show_chart, Icons.history],
          iconSize: 30,
          activeIndex: _currentTab,
          onTap: (int) {
            setState(() {
              _currentTab = int;
              _currentScreen =
                  (int == 0) ? const GraphScreen() : const HistoryScreen();
            });
          }),
    );
  }
}
