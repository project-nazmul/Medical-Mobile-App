import 'package:flutter/material.dart';
import 'package:medical_mobile_app/data/data.dart';
import 'package:medical_mobile_app/design/custom_text.dart';

class FindDoctor extends StatelessWidget {
  const FindDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                  text: "Let's find your doctor",
                  clr: Colors.black,
                  fw: FontWeight.bold,
                  fs: 18),
              Icon(Icons.menu)
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 10),
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text(Data.departments[index])),
              );
            },
          ),
        )
      ],
    );
  }
}
