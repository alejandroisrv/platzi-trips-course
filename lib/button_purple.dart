import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget{

  String titleBotton;

  ButtonPurple(this.titleBotton);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap:() {
        Scaffold.of(context).showSnackBar(
          SnackBar(content:Text('Navegando..'))
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 20.0,
          right: 20.0,
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(colors: [
            Color(0xFF4268d3),
            Color(0xFF484CD1),
          ],
          begin:FractionalOffset(0.2,0.0),
          end:FractionalOffset(0.2,0.0),
            stops: [0.0, 0.6],
              tileMode: TileMode.clamp

          )
        ),
        child:Center(
          child: Text(titleBotton,
          style: TextStyle(fontFamily: "Lato",fontSize: 17.0,color: Colors.white),
          ),
        ),

      ),
    );
  }


}