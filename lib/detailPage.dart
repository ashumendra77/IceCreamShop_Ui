import 'package:IceCream_ui/widget/text_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> size = ["S", "M", "L"];
  int quantity = 0;
  int selected = 0;
  Widget getSize(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(size[index],
              style: TextStyle(
                  fontSize: 30,
                  color: selected == index ? Colors.white : Colors.black)),
          SizedBox(width: 10)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.arrow_back)),
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.shopping_cart))
            ],
          ),
          Text("Pistachio\nIce Cream",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w500)),
          Container(
            height: 320,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        getText("1200", "KL", "Energy"),
                        SizedBox(height: 8),
                        getText("150", "KCal", "Calories"),
                        SizedBox(height: 8),
                        getText("20", "%", "Calcium"),
                        SizedBox(height: 8),
                        getText("0", "g", "Sugar"),
                        SizedBox(height: 8),
                      ],
                    ),
                    SizedBox(width: 50),
                    Stack(
                      children: <Widget>[
                        Container(
                            height: 300,
                            width: 180,
                            decoration: BoxDecoration()),
                        Container(
                            height: 270,
                            width: 180,
                            margin: EdgeInsets.only(top: 30),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.pink[100], width: 5),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xfff389aa))),
                        Positioned(
                          left: 20,
                          right: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image(
                                width: 130,
                                height: 150,
                                image: AssetImage("images/1.png"),
                                fit: BoxFit.cover,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: size
                                      .asMap()
                                      .entries
                                      .map((MapEntry map) => getSize(map.key))
                                      .toList()),
                              Text("Qty-",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              SizedBox(height: 10),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.pink[100]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    InkWell(
                                        onTap: () {
                                          setState(() {});
                                          if (quantity > 0) {
                                            quantity--;
                                          }
                                        },
                                        child: Text("-",
                                            style: TextStyle(fontSize: 32))),
                                    Text("$quantity",
                                        style: TextStyle(fontSize: 22)),
                                    InkWell(
                                        onTap: () {
                                          setState(() {});
                                          if (quantity < 20) {
                                            quantity++;
                                          }
                                        },
                                        child: Icon(Icons.add))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Text("Total:", style: TextStyle(fontSize: 25, color: Colors.grey)),
          Text("\$${19.6}",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold)),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Place Order",
                    style: TextStyle(color: Colors.white, fontSize: 23)),
                Icon(Icons.arrow_forward, color: Colors.white, size: 35)
              ],
            ),
          )
        ],
      )),
    );
  }
}
