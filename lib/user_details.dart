import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  String pathImage;
  String userName;
  String userEmail;

  UserDetails(this.pathImage, this.userName, this.userEmail);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title = Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        "Profile",
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
    );

    final userPhoto = Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(pathImage), fit: BoxFit.cover),
        shape: BoxShape.circle,
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 5,
        left: 10,
      ),
      child: Text(
        this.userName,
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    );

    final userEmail = Container(
      margin: EdgeInsets.only(
        top: 5,
        left: 10,
      ),
      child: Text(
        this.userEmail,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16.0,
          fontFamily: "Lato",
        ),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userEmail],
    );

    final userDetailsCard = Container(
        margin: EdgeInsets.only(top: 15, bottom: 15),
        child: Row(
          children: <Widget>[userPhoto, userDetail],
        ));

    final iconBottonCard = (icon) {
      return Expanded(
          child: Container(
        height: 40,
        width: 35,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Icon(icon, color: Colors.deepPurple, size: 30),
      ));
    };

    final IconsCard = Row(
      children: <Widget>[
        iconBottonCard(Icons.turned_in_not),
        iconBottonCard(Icons.card_travel),
        iconBottonCard(Icons.add),
        iconBottonCard(Icons.mail_outline),
        iconBottonCard(Icons.person)
      ],
    );

    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[title, userDetailsCard, IconsCard],
      ),
    );
  }
}
