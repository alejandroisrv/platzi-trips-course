import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/philipwalton.jpg','Philip Walton', '2 review 15 photos','Maravilloso lugar'),
        Review('assets/img/philipwalton.jpg','Philip Walton', '2 review 15 photos','Maravilloso lugar'),
        Review('assets/img/philipwalton.jpg','Philip Walton', '2 review 15 photos','Maravilloso lugar')
      ],
    );
  }

}