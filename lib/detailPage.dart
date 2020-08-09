import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> size = ["S", "M", "L"];
  int selected = 0;
  Widget getSize(int index) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(size[index]),
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.arrow_back),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.shopping_cart),
              )
            ],
          ),
          Text(
            "Pistachio\nIce Cream",
            style: TextStyle(
                fontSize: 30,
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w500),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("1200kg"),
                        Text("Energy"),
                        Text("120%"),
                        Text("Calories"),
                        Text("500kg"),
                        Text("Calcium"),
                        Text("0g"),
                        Text("Sugar")
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red)),
                        Column(
                          children: <Widget>[
                            Image(
                              height: 120,
                              image: AssetImage("images/1.png"),
                              fit: BoxFit.cover,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: size
                                    .asMap()
                                    .entries
                                    .map((MapEntry map) => getSize(map.key))
                                    .toList())
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
