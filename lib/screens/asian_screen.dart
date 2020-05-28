import 'package:flutter/material.dart';
import 'package:foodappui/screens/my_card.dart';

class Asian extends StatefulWidget {
  @override
  _AsianState createState() => _AsianState();
}

class _AsianState extends State<Asian> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.65,
      color: Colors.red.withAlpha(80),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyCard(
            "images/2222.png",
            20.0,
            "Asian bowl",
            "with null",
            "Contrary to popular belief, lorem lpusm is not simpley random tex. it has roots in a ",
            420.0,
          ),
          MyCard(
            "images/2222.png",
            20.0,
            "Asian bowl",
            "with null",
            "Contrary to popular belief, lorem lpusm is not simpley random tex. it has roots in a ",
            420.0,
          ),
          MyCard(
            "images/2222.png",
            20.0,
            "Asian bowl",
            "with null",
            "Contrary to popular belief, lorem lpusm is not simpley random tex. it has roots in a ",
            420.0,
          ),
          MyCard(
            "images/2222.png",
            20.0,
            "Asian bowl",
            "with null",
            "Contrary to popular belief, lorem lpusm is not simpley random tex. it has roots in a ",
            420.0,
          ),
          MyCard(
            "images/2222.png",
            20.0,
            "Asian bowl",
            "with null",
            "Contrary to popular belief, lorem lpusm is not simpley random tex. it has roots in a ",
            420.0,
          ),
          MyCard(
            "images/2222.png",
            20.0,
            "Asian bowl",
            "with null",
            "Contrary to popular belief, lorem lpusm is not simpley random tex. it has roots in a ",
            420.0,
          ),
        ],
      ),
    );
  }
}
