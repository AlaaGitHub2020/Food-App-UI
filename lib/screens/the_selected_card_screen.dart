import 'package:flutter/material.dart';
import 'package:foodappui/screens/main_screen.dart';

class TheSelectedCard extends StatefulWidget {
  String imageUrl;
  double price;
  String title;
  String subTitle;
  String content;
  double kalories;
  TheSelectedCard(this.imageUrl, this.price, this.title, this.subTitle,
      this.content, this.kalories);
  @override
  _TheSelectedCardState createState() => _TheSelectedCardState(this.imageUrl,
      this.price, this.title, this.subTitle, this.content, this.kalories);
}

class _TheSelectedCardState extends State<TheSelectedCard> {
  String imageUrl;
  double price;
  String title;
  String subTitle;
  String content;
  double kalories;
  _TheSelectedCardState(this.imageUrl, this.price, this.title, this.subTitle,
      this.content, this.kalories);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withAlpha(50),
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MainScreen(),
                ),
              );
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.restaurant_menu,
                color: Colors.grey,
              ),
              onPressed: null)
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, top: 10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.4,
//              padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red.withAlpha(60),
                  child: Image.asset(imageUrl),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subTitle,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      price.toString() + "\$",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  content,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.06,
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                  color: Colors.red.withAlpha(60),
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Add to bag',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 30.0,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        backgroundColor: Colors.red.withAlpha(80),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              30.0,
            ),
            color: Colors.red,
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 5.0,
                left: 5.0,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                    color: Colors.white,
                  ),
                  child: Text(
                    number.toString(),
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
