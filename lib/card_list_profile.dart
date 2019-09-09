import 'package:flutter/material.dart';
import 'package:platzi_trips_app/user_details.dart';

import 'card_profile.dart';

class CardListProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ListView(
          children: <Widget>[
            UserDetails('assets/img/philipwalton.jpg', 'Philip Walton', 'walton@email'),
            CardProfile('assets/img/la.jpg','Los Angeles','Cuidad de los angeles', 'Steps 122'),
            CardProfile('assets/img/golde_gate.jpg','San Francisco','Cuidad de California, Puente Golden State','Steps 122'),
            CardProfile('assets/img/las_vegas.jpg','Las Vegas','Cuidad de Las Vegas', 'Steps 122'),
            CardProfile('assets/img/montainview.jpg','Montain View','Cuidad de California, Puente Golden State','Steps 122'),
          ],
        )
    );
  }

}