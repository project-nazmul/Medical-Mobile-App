import 'package:flutter/material.dart';
import 'package:medical_mobile_app/design/custom_text.dart';
import 'package:readmore/readmore.dart';
import 'package:medical_mobile_app/model/doctor.dart';

class SingleDoctorPage extends StatelessWidget {
  const SingleDoctorPage({Key? key, required this.doctor}) : super(key: key);
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF0F1F1),
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(right: 25, left: 25, top: 100),
                      height: 180,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 5,
                                          blurRadius: 10,
                                          color: Colors.black.withOpacity(0.2))
                                    ],
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(doctor.image)),
                                    borderRadius: BorderRadius.circular(30)),
                              )),
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(left: 30),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomText(
                                                text: doctor.name,
                                                clr: Colors.black,
                                                fw: FontWeight.bold,
                                                fs: 15),
                                            CustomText(
                                                text:
                                                    '${doctor.deptName} specialist',
                                                clr: Colors.black
                                                    .withOpacity(0.5),
                                                fw: FontWeight.bold,
                                                fs: 13),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(8),
                                              margin: const EdgeInsets.only(
                                                  right: 15),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomText(
                                                    text: 'Rating',
                                                    clr: Colors.black
                                                        .withOpacity(0.5),
                                                    fw: FontWeight.bold,
                                                    fs: 11),
                                                CustomText(
                                                    text:
                                                        '${doctor.rating} out of 5',
                                                    clr: Colors.black,
                                                    fw: FontWeight.bold,
                                                    fs: 14),
                                              ],
                                            )
                                          ],
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(8),
                                              margin: const EdgeInsets.only(
                                                  right: 15),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Icon(
                                                Icons.people_sharp,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomText(
                                                    text: 'Patient',
                                                    clr: Colors.black
                                                        .withOpacity(0.5),
                                                    fw: FontWeight.bold,
                                                    fs: 11),
                                                CustomText(
                                                    text: '${doctor.patients}+',
                                                    clr: Colors.black,
                                                    fw: FontWeight.bold,
                                                    fs: 14),
                                              ],
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    //below profile picture
                    Container(
                        margin:
                            const EdgeInsets.only(top: 30, right: 25, left: 25),
                        padding:
                            const EdgeInsets.only(top: 20, right: 15, left: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: 'Biography',
                                clr: Colors.black.withOpacity(0.8),
                                fw: FontWeight.bold,
                                fs: 15),
                            const SizedBox(
                              height: 12,
                            ),
                            ReadMoreText(
                              doctor.bio,
                              trimLines: 2,
                              colorClickableText: Colors.blue,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: '...Show less',
                              lessStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                              moreStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomText(
                                text: 'Location',
                                clr: Colors.black.withOpacity(0.8),
                                fw: FontWeight.bold,
                                fs: 15),
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('images/map.png'))),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                    text: 'Reviews',
                                    clr: Colors.black.withOpacity(0.8),
                                    fw: FontWeight.bold,
                                    fs: 15),
                                CustomText(
                                    text: 'See All',
                                    clr: Colors.blue.withOpacity(0.8),
                                    fw: FontWeight.bold,
                                    fs: 13),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 150,
                              child: ListView.builder(
                                shrinkWrap: false,
                                scrollDirection: Axis.vertical,
                                itemCount: doctor.reviews.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(doctor
                                              .reviews[index].reviewerImage),
                                          radius: 20,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          children: [
                                            CustomText(
                                                text: doctor.reviews[index]
                                                    .reviewerName,
                                                clr: Colors.black,
                                                fw: FontWeight.bold,
                                                fs: 15),
                                            CustomText(
                                                text: doctor
                                                    .reviews[index].review,
                                                clr: Colors.black
                                                    .withOpacity(0.5),
                                                fw: FontWeight.bold,
                                                fs: 13),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 110,
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 100,
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomText(
                          text: 'Make appointment',
                          clr: Colors.white,
                          fw: FontWeight.normal,
                          fs: 18),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 23, right: 22, top: 20, bottom: 20),
                  padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 23, right: 22, top: 20, bottom: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
