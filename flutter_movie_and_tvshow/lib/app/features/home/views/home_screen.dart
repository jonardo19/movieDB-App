import 'package:flutter/material.dart';
import "package:get/get.dart";
import '../../../routes/app_routers.dart';
import '../../dashboard/dashboard_controller.dart';
import '../widgets/custom_appbar.dart';
import '../../movie/widgets/custom_carousel_slider.dart';
import '../widgets/custom_drawer.dart';
import '../../movie/widgets/custom_popular.dart';
import '../widgets/custom_title.dart';
import '../../movie/widgets/custom_top_rated.dart';
import '../../movie/widgets/custom_up_coming.dart';

class HomeScreen extends GetView<DashboardController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () async {
      // await controller.getTrendingMovie("movie", "day");
      await controller.getTopRatedMovie(2);
    });
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 15, 20),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(
          title: "MOVIES",
        ),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const CustomCarouselSlider(),
            CustomTitle(
                seeMore: "See More",
                myOnTap: () => Get.toNamed(AppRouters.topRatedMovie),
                title: "Top Rated Movies"),
            const SizedBox(height: 16),
            const CustomTopRated(
              myHeight: 235,
              myAspectRatio: 1 / 0.6,
              myAxis: Axis.horizontal,
              myCrossAxisCount: 1,
              myPadding: EdgeInsets.only(left: 8, right: 8),
              myTitle: true,
            ),
            const SizedBox(height: 16),
            CustomTitle(
                seeMore: "See More",
                myOnTap: () => Get.toNamed(AppRouters.upcomingMovie),
                title: "UpComing Movies"),
            const SizedBox(height: 16),
            const CustomUpComing(
              myAxis: Axis.horizontal,
              myAspectRatio: 1 / 0.6,
              myCrossAxisCount: 1,
              myHeight: 235,
              myPadding: EdgeInsets.only(left: 8, right: 8),
              myTitle: true,
            ),
            const SizedBox(height: 16),
            CustomTitle(
                seeMore: "See More",
                myOnTap: () => Get.toNamed(AppRouters.popularMovie),
                title: "Popular Movies"),
            const SizedBox(height: 16),
            const CustomPopular(
              myAxis: Axis.horizontal,
              myAspectRatio: 1 / 0.6,
              myCrossAxisCount: 1,
              myHeight: 235,
              myPadding: EdgeInsets.only(left: 8, right: 8),
              myTitle: true,
            ),
          ],
        ),
      ),
    );
  }
}
