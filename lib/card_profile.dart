import 'package:flutter/material.dart';

import 'floating_action_green.dart';
class CardProfile extends StatelessWidget{
  String pathImage;
  String titleCard;
  String descriptionCard;
  String stepsCard;

  CardProfile(this.pathImage,this.titleCard,this.descriptionCard,this.stepsCard);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final backGround = Container(
      height: 200.0,
      margin:EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(image: AssetImage(pathImage),fit: BoxFit.cover),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color:Colors.black38,
            offset: Offset(0.2, 0.6),
          )
        ],
        shape: BoxShape.rectangle,

      ),
    );

    final cardTitle = Container(
      margin: EdgeInsets.only(
          top: 20,
          left:20
      ),
      child: Text(
        titleCard,
        style: TextStyle(
          fontSize: 17.0,
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontFamily: "Lato"
        ),
      )
    );


    final cardDescription = Container(
        margin: EdgeInsets.only(
            top: 8,
            left:20
        ),
        child: Text(
          descriptionCard,
          style: TextStyle(
              fontSize: 13.0,
              color: Colors.grey
          ),
        )
    );

    final cardSteps = Container(
        margin: EdgeInsets.only(
            top: 8,
            left:20
        ),
        child: Text(
          stepsCard,
          style: TextStyle(
              fontSize: 15.0,
              color: Colors.deepOrangeAccent
          ),
        )
    );


    final cardDetails = Container(
      width: 250,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.2,0.6)
          )
        ],
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          cardTitle,
          cardDescription,
          cardSteps
        ],
      ),
    ) ;



    return Container( margin: EdgeInsets.only(bottom: 40.0),
      child: Stack(
        alignment: Alignment(0,1.4),
        children: <Widget>[
          backGround,
          cardDetails,
          Container(
            alignment: Alignment(0.5,1),
            child: FloatingActionGreen(),
          ),

        ],
      )
      );
  }

}