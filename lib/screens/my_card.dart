import 'package:flutter/material.dart';
import 'package:foodappui/screens/the_selected_card_screen.dart';

class MyCard extends StatefulWidget {
  String imageUrl;
  double price;
  String title;
  String subTitle;
  String content;
  double kalories;
  MyCard(this.imageUrl, this.price, this.title, this.subTitle, this.content,
      this.kalories);
  @override
  _MyCardState createState() => _MyCardState(this.imageUrl, this.price,
      this.title, this.subTitle, this.content, this.kalories);
}

class _MyCardState extends State<MyCard> {
  String imageUrl;
  double price;
  String title;
  String subTitle;
  String content;
  double kalories;
  _MyCardState(this.imageUrl, this.price, this.title, this.subTitle,
      this.content, this.kalories);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 200,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => TheSelectedCard(this.imageUrl, this.price,
                    this.title, this.subTitle, this.content, this.kalories)),
          );
        },
        child: Card(
          color: Colors.red.withAlpha(40),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(5.0),
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                          backgroundColor: Colors.red.withAlpha(60),
                          child: Image.asset(imageUrl))),
                  Text(
                    price.toString() + "\$",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                padding: EdgeInsets.all(
                  5.0,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      content,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      kalories.toString() + "Kcal",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
