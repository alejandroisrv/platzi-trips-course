import 'package:flutter/material.dart';


class Review extends StatelessWidget{

  String pathImage = "assets/img/philipwalton.jpg";
  String name = "Alejandro Sojo";
  String details = "1 review 5 photos";
  String comment = "It is a long established fact that ";

  Review(this.pathImage,this.name,this.details,this.comment);

  @override
  Widget build(BuildContext context) {

    final userName = Container (
      margin:EdgeInsets.only(
        left:20.0
      ),
      child: Text(name,
      style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato"),
        textAlign: TextAlign.left,
      )
    );

    final userInfo = Container (
        margin:EdgeInsets.only(
            left:20.0
        ),
        child: Text(details,
          style: TextStyle(
              fontSize: 13.0,
              fontFamily: "Lato",
              color:Color(0xFFa3a5a7)
          ),
          textAlign: TextAlign.left,
        )
    );

    final userComment = Container (
        margin:EdgeInsets.only(
            left:20.0
        ),
        child: Text(comment,
          style: TextStyle(
              fontSize: 13.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.w900
          ),
          textAlign: TextAlign.left,
        )
    );


    final userDetails = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userInfo,
          userComment,
      ],

    );
    final photo = Container(
      margin: EdgeInsets.all(20),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image:DecorationImage(
            fit:BoxFit.cover,
            image:AssetImage(pathImage)
        )
      ),
    );
    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}