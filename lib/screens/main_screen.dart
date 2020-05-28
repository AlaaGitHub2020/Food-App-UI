import 'package:flutter/material.dart';
import 'package:foodappui/screens/all_screen.dart';
import 'package:foodappui/screens/asian_screen.dart';
import 'package:foodappui/screens/burgers_screen.dart';
import 'package:foodappui/screens/chainese_screen.dart';
import 'package:foodappui/screens/italian_screen.dart';
import 'package:foodappui/screens/my_card.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

int number = 0;

class _MainScreenState extends State<MainScreen> {
  TextEditingController _searchController;
  String tabTitleSelected;
  bool allSelected;
  bool asianSelected;
  bool italianSelected;
  bool chaineseSelected;
  bool burgersSelected;
  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    tabTitleSelected = "All";
    allSelected = true;
    asianSelected = false;
    italianSelected = false;
    chaineseSelected = false;
    burgersSelected = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Positioned(
                        child: IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                        top: 5.0,
                        right: 5.0,
                        child: Text(
                          number.toString(),
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.restaurant_menu,
                        color: Colors.grey,
                      ),
                      onPressed: null)
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: 20.0,
                  bottom: 20.0,
                ),
                child: Text(
                  "Simple way to find\n Tasty food",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          allSelected = true;
                          asianSelected = false;
                          italianSelected = false;
                          chaineseSelected = false;
                          burgersSelected = false;
                          tabTitleSelected = "All";
                        });
                      },
                      child: Text(
                        "All",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: allSelected ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          allSelected = false;
                          asianSelected = true;
                          italianSelected = false;
                          chaineseSelected = false;
                          burgersSelected = false;
                          tabTitleSelected = "Asian";
                        });
                      },
                      child: Text(
                        "Asian",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: asianSelected ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          allSelected = false;
                          asianSelected = false;
                          italianSelected = true;
                          chaineseSelected = false;
                          burgersSelected = false;
                          tabTitleSelected = "Italian";
                        });
                      },
                      child: Text(
                        "Italian",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: italianSelected ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          allSelected = false;
                          asianSelected = false;
                          italianSelected = false;
                          chaineseSelected = true;
                          burgersSelected = false;
                          tabTitleSelected = "Chainese";
                        });
                      },
                      child: Text(
                        "Chainese",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: chaineseSelected ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          allSelected = false;
                          asianSelected = false;
                          italianSelected = false;
                          chaineseSelected = false;
                          burgersSelected = true;
                          tabTitleSelected = "Burgers";
                        });
                      },
                      child: Text(
                        "Burgers",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: burgersSelected ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.0833,
                padding: EdgeInsets.all(
                  10.0,
                ),
                margin: EdgeInsets.all(
                  10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                  color: Colors.grey.withAlpha(70),
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
              _selectTab(tabTitleSelected),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
          child: Icon(
            Icons.refresh,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _selectTab(String tabTitleSelected) {
    if (tabTitleSelected == "All") {
      return All();
    } else if (tabTitleSelected == "Asian") {
      return Asian();
    } else if (tabTitleSelected == "Italian") {
      return Italian();
    } else if (tabTitleSelected == "Chainese") {
      return Chainese();
    } else if (tabTitleSelected == "Burgers") {
      return Burgers();
    }
  }
}
