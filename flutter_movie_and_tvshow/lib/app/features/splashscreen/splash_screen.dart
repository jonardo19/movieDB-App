import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import '../dashboard/dashboard_controller.dart';
import '../../routes/app_routers.dart';

class SplashScreen extends GetView<DashboardController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2),
        () => Get.offAllNamed(AppRouters.dashboard));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 16, 15, 20),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/spl.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 16,
              ),
              const SpinKitWave(
                color: Colors.amber,
                size: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
