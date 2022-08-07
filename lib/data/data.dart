import 'package:medical_mobile_app/model/doctor.dart';
import 'package:medical_mobile_app/model/reviewer.dart';

class Data {
  static List<Doctor> doctors = [
    Doctor(
        name: 'Dr. Anna Baker',
        deptName: 'Heart Surgeon',
        image: 'images/doctors/doctor1.png',
        rating: 4,
        patients: 1000,
        bio: 'Dr. Anna Baker is an Indonesian Heart Surgeon Dr. Anna Baker is an Indonesian Heart SurgeonDr. Anna Baker is an Indonesian Heart Surgeon'
            'Dr. Anna Baker is an Indonesian Heart Surgeon Dr. Anna Baker is an Indonesian Heart SurgeonDr. Anna Baker is an Indonesian Heart Surgeon'
            'Dr. Anna Baker is an Indonesian Heart Surgeon Dr. Anna Baker is an Indonesian Heart SurgeonDr. Anna Baker is an Indonesian Heart Surgeon',
        reviews:[
          Reviewer(reviewerName: 'Jack Locker', reviewerImage: 'images/reviewers/reviewer1.jpg',review: 'GOOD'),
          Reviewer(reviewerName: 'Mack Booker', reviewerImage: 'images/reviewers/reviewer2.jpg',review: 'BETTER'),
          Reviewer(reviewerName: 'Demi Lovato', reviewerImage: 'images/reviewers/reviewer3.jpg',review: 'SUPER'),
          Reviewer(reviewerName: 'Taylor John', reviewerImage: 'images/reviewers/reviewer4.jpg',review: 'BEST'),
          Reviewer(reviewerName: 'Demi Lovato', reviewerImage: 'images/reviewers/reviewer3.jpg',review: 'SUPER'),
          Reviewer(reviewerName: 'Taylor John', reviewerImage: 'images/reviewers/reviewer4.jpg',review: 'BEST'),
        ],
    ),
    Doctor(
      name: 'Dr. Bona Jake',
      deptName: 'Psychology',
      image: 'images/doctors/doctor2.jpg',
      rating: 4.5,
      patients: 800,
      bio: 'Dr. Anna Baker is an Indonesian Heart Surgeon Dr. Anna Baker is an Indonesian Heart SurgeonDr. Anna Baker is an Indonesian Heart Surgeon',
      reviews:[
        Reviewer(reviewerName: 'Jack Locker', reviewerImage: 'images/reviewers/reviewer1.jpg',review: 'GOOD'),
        Reviewer(reviewerName: 'Mack Booker', reviewerImage: 'images/reviewers/reviewer2.jpg',review: 'BETTER'),
        Reviewer(reviewerName: 'Demi Lovato', reviewerImage: 'images/reviewers/reviewer3.jpg',review: 'SUPER'),
        Reviewer(reviewerName: 'Taylor John', reviewerImage: 'images/reviewers/reviewer4.jpg',review: 'BEST'),
        Reviewer(reviewerName: 'Jack Locker', reviewerImage: 'images/reviewers/reviewer1.jpg',review: 'GOOD'),
        Reviewer(reviewerName: 'Mack Booker', reviewerImage: 'images/reviewers/reviewer2.jpg',review: 'BETTER'),
        Reviewer(reviewerName: 'Demi Lovato', reviewerImage: 'images/reviewers/reviewer3.jpg',review: 'SUPER'),
        Reviewer(reviewerName: 'Taylor John', reviewerImage: 'images/reviewers/reviewer4.jpg',review: 'BEST'),
      ],
    ),
    Doctor(
      name: 'Dr. Joe Baker',
      deptName: 'Cardiology',
      image: 'images/doctors/doctor3.jpg',
      rating: 3,
      patients: 750,
      bio: 'Dr. Anna Baker is an Indonesian Heart Surgeon Dr. Anna Baker is an Indonesian Heart SurgeonDr. Anna Baker is an Indonesian Heart Surgeon',
      reviews:[
        Reviewer(reviewerName: 'Jack Locker', reviewerImage: 'images/reviewers/reviewer1.jpg',review: 'GOOD'),
        Reviewer(reviewerName: 'Mack Booker', reviewerImage: 'images/reviewers/reviewer2.jpg',review: 'BETTER'),
        Reviewer(reviewerName: 'Demi Lovato', reviewerImage: 'images/reviewers/reviewer3.jpg',review: 'SUPER'),
        Reviewer(reviewerName: 'Taylor John', reviewerImage: 'images/reviewers/reviewer4.jpg',review: 'BEST'),
        Reviewer(reviewerName: 'Mack Booker', reviewerImage: 'images/reviewers/reviewer2.jpg',review: 'BETTER'),
        Reviewer(reviewerName: 'Demi Lovato', reviewerImage: 'images/reviewers/reviewer3.jpg',review: 'SUPER'),
        Reviewer(reviewerName: 'Taylor John', reviewerImage: 'images/reviewers/reviewer4.jpg',review: 'BEST'),
      ],
    ),
    Doctor(
      name: 'Dr. Selina Nader',
      deptName: 'Dentist',
      image: 'images/doctors/doctor4.jpg',
      rating: 4.9,
      patients: 1500,
      bio: 'Dr. Anna Baker is an Indonesian Heart Surgeon Dr. Anna Baker is an Indonesian Heart SurgeonDr. Anna Baker is an Indonesian Heart Surgeon',
      reviews:[
        Reviewer(reviewerName: 'Jack Locker', reviewerImage: 'images/reviewers/reviewer1.jpg',review: 'GOOD'),
        Reviewer(reviewerName: 'Mack Booker', reviewerImage: 'images/reviewers/reviewer2.jpg',review: 'BETTER'),
        Reviewer(reviewerName: 'Demi Lovato', reviewerImage: 'images/reviewers/reviewer3.jpg',review: 'SUPER'),
        Reviewer(reviewerName: 'Taylor John', reviewerImage: 'images/reviewers/reviewer4.jpg',review: 'BEST'),
        Reviewer(reviewerName: 'Demi Lovato', reviewerImage: 'images/reviewers/reviewer3.jpg',review: 'SUPER'),
      ],
    ),
    Doctor(
      name: 'Dr. Mickael Toe',
      deptName: 'Gynecology',
      image: 'images/doctors/doctor5.jpg',
      rating: 4.2,
      patients: 950,
      bio: 'Dr. Anna Baker is an Indonesian Heart Surgeon Dr. Anna Baker is an Indonesian Heart Surgeon Dr. Anna Baker is an Indonesian Heart Surgeon',
      reviews:[
        Reviewer(reviewerName: 'Jack Locker', reviewerImage: 'images/reviewers/reviewer1.jpg',review: 'GOOD'),
        Reviewer(reviewerName: 'Mack Booker', reviewerImage: 'images/reviewers/reviewer2.jpg',review: 'BETTER'),
        Reviewer(reviewerName: 'Demi Lovato', reviewerImage: 'images/reviewers/reviewer3.jpg',review: 'SUPER'),
        Reviewer(reviewerName: 'Taylor John', reviewerImage: 'images/reviewers/reviewer4.jpg',review: 'BEST'),
      ],
    ),
  ];
  static List departments=['❤  Heart Surgeon','💊  Psychology','✨  Cardiology','🦷  Dentist','💦  Gynecology'];
}