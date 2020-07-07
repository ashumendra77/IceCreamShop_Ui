import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xfff389aa),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Ice Cream\nShop",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height -
                      kBottomNavigationBarHeight -
                      50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage("images/2.png"), fit: BoxFit.contain)),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height +
                  kBottomNavigationBarHeight -
                  135,
              right: 10,
              child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                  // decoration: BoxDecoration(color: Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Explore",
                        style: TextStyle(fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color(0xfff14a58),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.arrow_forward,
                              size: 40, color: Colors.white),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
