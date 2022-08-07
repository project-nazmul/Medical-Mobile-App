import 'package:flutter/material.dart';
import 'package:medical_mobile_app/data/data.dart';
import 'package:medical_mobile_app/design/custom_text.dart';
import 'package:medical_mobile_app/screen/video_call.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: 5,
          ),
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 50, left: 50, bottom: 2),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, right: 25, left: 25),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xff0957DE),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  Data.doctors[index].image)),
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 50,
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                          text: Data.doctors[index].name,
                                          clr: Colors.white,
                                          fw: FontWeight.bold,
                                          fs: 15),
                                      CustomText(
                                          text: Data.doctors[index].deptName,
                                          clr: Colors.white.withOpacity(0.5),
                                          fw: FontWeight.bold,
                                          fs: 12),
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => VideoCall(
                                              doctor: Data.doctors[index]),
                                        ));
                                      },
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                            Icons.video_camera_front_sharp),
                                      ),
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              margin: const EdgeInsets.only(
                                  bottom: 20, left: 20, right: 20),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                  child: CustomText(
                                      text: 'Sun, Aug 19, 08.00 am - 10.00 am',
                                      clr: Colors.white,
                                      fw: FontWeight.bold,
                                      fs: 12)),
                            )),
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        );
      },
    );
  }
}
