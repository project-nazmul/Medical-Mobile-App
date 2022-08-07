import 'package:flutter/material.dart';
import 'package:medical_mobile_app/data/data.dart';
import 'package:medical_mobile_app/design/custom_text.dart';
import 'package:medical_mobile_app/screen/single_doctor_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Doctors extends StatelessWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Data.doctors.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  SingleDoctorPage(doctor: Data.doctors[index]),
            ));
          },
          child: Container(
            padding: const EdgeInsets.only(right: 5, left: 5),
            margin: const EdgeInsets.only(right: 20, left: 20, top: 6),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(Data.doctors[index].image))),
                    )),
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: Data.doctors[index].name,
                              clr: Colors.black,
                              fw: FontWeight.bold,
                              fs: 15),
                          CustomText(
                              text: Data.doctors[index].deptName,
                              clr: Colors.black.withOpacity(0.5),
                              fw: FontWeight.bold,
                              fs: 11),
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: Data.doctors[index].rating,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 12.0,
                                direction: Axis.horizontal,
                              ),
                              CustomText(
                                  text:
                                      ' ${Data.doctors[index].rating} | ${Data.doctors[index].reviews.length} Reviews',
                                  clr: Colors.black.withOpacity(0.5),
                                  fw: FontWeight.bold,
                                  fs: 11),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
