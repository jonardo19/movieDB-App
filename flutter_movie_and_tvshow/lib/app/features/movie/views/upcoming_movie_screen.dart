import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../widgets/custom_up_coming.dart';
import '../../dashboard/dashboard_controller.dart';

class UpComingMovieScreen extends GetView<DashboardController> {
  const UpComingMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 15, 20),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8, left: 16, bottom: 8),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: Container(
              padding: const EdgeInsets.only(left: 8),
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white30),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
            ),
          ),
        ),
        title: Text(
          "Top Rated Movie".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomUpComing(
                scroll: controller.scrollController,
                myAspectRatio: 2 / 3.3,
                myAxis: Axis.vertical,
                myCrossAxisCount: 3,
                myHeight: MediaQuery.of(context).size.height,
                myPadding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                myTitle: false)
          ],
        ),
      ),
    );
  }
}
