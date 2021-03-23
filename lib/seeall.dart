import 'package:flutter/material.dart';

class Seeall extends StatefulWidget {
  @override
  _SeeallState createState() => _SeeallState();
}

class _SeeallState extends State<Seeall> {
  bool valuechanges = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: valuechanges, onChanged: null),
                      Text("Veg only"),
                      Checkbox(value: valuechanges, onChanged: null),
                      Text("Non Veg only"),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      _buildFoodItem("assets/4.png", "pizzadopyaza", "Rs400"),
                      SizedBox(
                        height: 10,
                      ),
                      _buildFoodItem("assets/5.png", "pizzapyaza", "Rs200"),
                      SizedBox(
                        height: 10,
                      ),
                      _buildFoodItem("assets/3.png", "pizzadopyaza", "Rs400"),
                      SizedBox(
                        height: 10,
                      ),
                      _buildFoodItem(
                          "assets/2.png", "tomato with jalpino", "Rs 265"),
                      SizedBox(
                        height: 10,
                      ),
                      _buildFoodItem(
                          "assets/1.png", "capsicum with onion", "Rs365"),
                      _buildFoodItem(
                          "assets/burger1.png", "capsicum with onion", "Rs365"),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Total : ",
                                      style: TextStyle(
                                          fontSize: 28, color: Colors.white),
                                    ),
                                    Text("Rs 200",
                                        style: TextStyle(
                                            fontSize: 28, color: Colors.white))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildFoodItem(String imgPath, String foodName, String price) {
  return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: Row(children: [
            Hero(
                tag: imgPath,
                child: Image(
                    image: AssetImage(imgPath),
                    // fit: BoxFit.cover,
                    height: 100.0,
                    width: 100.0)),
            SizedBox(width: 10.0),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(foodName,
                  style:
                      TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
              Text(price, style: TextStyle(fontSize: 15.0, color: Colors.black))
            ])
          ])),
          IconButton(
              icon: Icon(Icons.add), color: Colors.black, onPressed: () {})
        ],
      ));
}
