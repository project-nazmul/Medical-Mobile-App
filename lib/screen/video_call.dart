import 'package:flutter/material.dart';
import 'package:medical_mobile_app/design/custom_text.dart';
import 'package:medical_mobile_app/model/doctor.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


class VideoCall extends StatefulWidget {
  const VideoCall({Key? key,required this.doctor}) : super(key: key);
  final Doctor doctor;
  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  double volume=30;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: const Color(0xff0856DB),
            color: Colors.white,
            elevation: 0,
            activeColor: const Color(0xff0F2852),
            items: const [
              TabItem(icon: Icons.videocam_outlined,),
              TabItem(icon: Icons.keyboard_voice_outlined,),
              TabItem(icon: Icons.call_end,),
              TabItem(icon: Icons.sms_outlined, ),
              TabItem(icon: Icons.more_vert, ),
            ],
            initialActiveIndex: 2,
          ),
        backgroundColor: const Color(0xff0856DC),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/doctor.jpg')
                )
              ),
            ),
            Positioned(
              top: 10,left: 10,right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 23, right: 22,top: 20,bottom: 20),
                      padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image:AssetImage('images/patient.png')
                      )
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 30,
                    top: 150
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 220,
                  width: 50,
                  child: Column(
                    children: [
                      RotatedBox(
                        quarterTurns: -1,
                        child: Slider(
                            value: volume,
                            min: 20,
                            max: 50,
                            onChanged: (val){
                              setState((){
                                volume=val;
                              });
                            }
                        ),
                      ),
                      const Icon(Icons.volume_down_outlined),
                    ],
                  ),
                ),
                const SizedBox(height: 70,),

                Container(
                  padding: const EdgeInsets.only(left: 50,right: 10,top: 10,bottom: 10),
                  color: Colors.black.withOpacity(0.2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: widget.doctor.deptName, clr: Colors.white.withOpacity(0.8), fw: FontWeight.bold, fs: 15),
                    const SizedBox(height: 3,),
                    CustomText(text: widget.doctor.name, clr: Colors.white, fw: FontWeight.bold, fs: 20),
                    const SizedBox(height: 5,),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.red,
                        ),
                        SizedBox(width: 10,),
                        CustomText(text: '5:46', clr: Colors.white, fw: FontWeight.normal, fs: 15)
                      ],
                    )
                  ],
                )),
              ],
            ),
          ],
        )
      ),
    );
  }
}
