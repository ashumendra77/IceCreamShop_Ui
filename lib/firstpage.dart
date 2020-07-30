import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int select = 0;
  int selectbar = 0;
  Map<int, List<dynamic>> maplist = {
    1: [
      Colors.red,
      "Straberry",
    ],
    2: [
      Colors.green,
      "pista",
    ],
    3: [
      Colors.blue,
      "chocolate",
    ],
    4: [
      Colors.brown,
      "cheery",
    ],
    // 2: [
    //   "Colors.red",
    //   "Straberry",
    // ],
  };
  List<String> baritem = [];
  List<String> barname = ["Cup", "Cone", "Candy", "Bowl"];
  List<String> baricon = [
    "images/cup.png",
    "images/cone.png",
    "images/candy.png",
    "images/bowl.png"
  ];
  Widget getBar(int index) {
    return GestureDetector(
      onTap: () {
        select = index;
        setState(() {});
      },
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: select == index ? Color(0xfff14a58) : Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                  child: Image(
                      image: AssetImage(""),
                      color: select == index ? Colors.white : Colors.grey)),
              Text(
                barname[index],
                style: TextStyle(
                  color: select == index ? Color(0xfff14a58) : Colors.grey,
                ),
              )
            ],
          ),
          SizedBox(width: 20)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    color: Color(0xfff389aa),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(20))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.blur_circular)),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.search))
                ],
              ),
              Positioned(
                top: 60,
                left: 40,
                child: RichText(
                  text: TextSpan(
                      text: "THE WORLD OF\n",
                      style: TextStyle(fontSize: 17),
                      children: <TextSpan>[
                        TextSpan(text: "yummy", style: TextStyle(fontSize: 35))
                      ]),
                ),
              ),
              Positioned(
                  bottom: 30,
                  right: 0,
                  child: Image(
                      image: AssetImage("images/4.png"),
                      height: 150,
                      width: 190)),
              Positioned(
                  bottom: 30,
                  right: 130,
                  child: Image(
                      image: AssetImage("images/3.png"), height: 40, width: 50))
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: baricon.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              selectbar = index;
                              setState(() {});
                            },
                            child: Container(
                              height: 70,
                              width: 70,
                              margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                  color: selectbar == index
                                      ? Color(0xfff14a58)
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(4, 4),
                                        color: Colors.grey[400],
                                        blurRadius: 3,
                                        spreadRadius: 1)
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Image(
                                    height: 45,
                                    color: selectbar == index
                                        ? Colors.white
                                        : Colors.grey,
                                    image: AssetImage(baricon[index])),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            barname[index],
                            style: TextStyle(
                              color: selectbar == index
                                  ? Color(0xfff14a58)
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 20)
                    ],
                  );
                }),
          ),
          Text(
            "Popular",
            style: TextStyle(
                color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Column(
              children: maplist.entries.map((MapEntry map) {
            // debugPrint("${map.value}");
            return Container(
                height: 100,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                color: map.value[0][300],
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 80,
                      color: Colors.blueGrey,
                    ),
                    Image(
                      height: 25,
                      image: AssetImage(baricon[0]),
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: <Widget>[
                        Text(map.value[1]),
                        Row(
                          children: <Widget>[
                            Text("\$${76.90}"),
                            RatingBar.readOnly(
                              initialRating: 5 / 10,
                              isHalfAllowed: true,
                              halfFilledIcon: Icons.star_half,
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star_border,
                              filledColor: Colors.yellow,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ));
          }).toList())
        ],
      )),
    );
  }
}
