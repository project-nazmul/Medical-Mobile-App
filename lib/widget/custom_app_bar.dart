import 'package:flutter/material.dart';
import 'package:medical_mobile_app/design/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 23, right: 22),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.border_all_rounded,
                  color: Colors.black.withOpacity(0.5),
                ),
              )),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: 'Current Location',
                    clr: Colors.black.withOpacity(0.5),
                    fw: FontWeight.bold,
                    fs: 13),
                const SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on,color: Colors.blue,),
                    const CustomText(
                        text: 'Semarang, INA',
                        clr: Colors.black,
                        fw: FontWeight.normal,
                        fs: 15),
                  ],
                )
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 25, right: 22,top: 25,bottom: 25),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/profile.jpg')
                  ),
                  color: Colors.white,
                  border: Border.all(width: 2,color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
                
              )),
        ],
      ),
    );
  }
}
