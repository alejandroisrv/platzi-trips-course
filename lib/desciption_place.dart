import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  String descriptionPlace;
  int Stars;
  String namePlace;

  DescriptionPlace(this.namePlace,this.Stars,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: EdgeInsets.only(
        top:20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontWeight: FontWeight.w300),
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(
        top:356,
        right: 3.0
      ),
      child: Icon(Icons.star,color: Colors.amber,),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top:350.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
              namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,

            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
        children: <Widget>[
          start,start,start,start
        ],
        )
      ],
    );
    return Column(
      children: <Widget>[
        title_stars,
        description,
      ],
    );
  }




}

