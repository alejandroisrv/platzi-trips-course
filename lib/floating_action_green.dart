import 'package:flutter/material.dart';

class FloatingActionGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionGreen();
  }



}

class _FloatingActionGreen extends State<FloatingActionGreen>{
  bool _pressed = false;


  void onPressedFav(){
    setState((){
      this._pressed = !this._pressed;
    });

      Scaffold.of(context).showSnackBar(SnackBar(content: this._pressed ? Text('Marcado como favorito') : Text('Quitado como favorito')));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return FloatingActionButton(
      backgroundColor: Colors.green,
        mini: true,
        tooltip: "Fav",
        child: Icon(
            this._pressed ? Icons.favorite : Icons.favorite_border
        ),
        onPressed: onPressedFav
    );
  }

}