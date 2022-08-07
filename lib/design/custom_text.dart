import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,required this.text,required this.clr,required this.fw,required this.fs}) : super(key: key);
  final Color clr;
  final double fs;
  final FontWeight fw;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style:
    TextStyle(
      color: clr,
      fontSize: fs,
      fontWeight: fw,
    ),);
  }
}
