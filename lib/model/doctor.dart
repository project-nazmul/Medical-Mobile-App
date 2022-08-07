import 'package:medical_mobile_app/model/reviewer.dart';

class Doctor{
  String name;
  String image;
  String deptName;
  double rating;
  int patients;
  String bio;
  List<Reviewer> reviews;

  Doctor({required this.image,required this.name,required this.deptName,required this.rating,required this.patients,required this.bio,required this.reviews});
}