import 'package:flutter/material.dart';
import 'package:medical_mobile_app/design/custom_text.dart';
import 'package:medical_mobile_app/widget/bottom_bar.dart';
import 'package:medical_mobile_app/widget/custom_app_bar.dart';
import 'package:medical_mobile_app/widget/custom_search_bar.dart';
import 'package:medical_mobile_app/widget/doctors.dart';
import 'package:medical_mobile_app/widget/find_doctor.dart';
import 'package:medical_mobile_app/widget/upcoming_schedule.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF0F1F1),
        body: Column(
          children: [
            const Expanded(flex: 2, child: CustomAppBar()),//AppBar
            const Expanded(flex: 2, child: CustomSearchBar()),//Search Bar
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                      text: 'Upcoming Schedule',
                      clr: Colors.black,
                      fw: FontWeight.bold,
                      fs: 18),
                  CustomText(
                      text: 'See All',
                      clr: Colors.blue,
                      fw: FontWeight.bold,
                      fs: 15),
                ],
              ),
            ),
            const Expanded(flex: 5, child: UpcomingSchedule()),//Upcoming Schedule pageView
            const Expanded(flex: 2, child: FindDoctor()),
            const Expanded(flex: 2, child: Doctors()),//Doctors pageView
            const Expanded(flex: 2, child: BottomBar()),//Bottom Navigation Bar
          ],
        ),
      ),
    );
  }
}
