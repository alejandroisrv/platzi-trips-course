import 'package:flutter/material.dart';
import 'card_list_profile.dart';
import 'header_profile_bar.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        HeaderProfileBar(),
        CardListProfile(),
      ],
    );
  }
}