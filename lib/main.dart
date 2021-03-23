import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/seeall.dart';
import 'category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final GlobalKey<ScaffoldState> _scaffoldstate = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldstate,
      backgroundColor: Colors.white,
      drawer: MyAnimation(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    _scaffoldstate.currentState.openDrawer();
                  },
                  child: Icon(
                    Icons.short_text,
                    size: 30.0,
                  ),
                ),
                Text(
                  'Fast corner',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.phone,
                      ),
                      iconSize: 20,
                      color: Colors.black,
                      splashColor: Colors.purple,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                      iconSize: 20,
                      color: Colors.black,
                      splashColor: Colors.purple,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            )),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'What would you like',
                    style: TextStyle(
                      fontFamily: 'Futura',
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'to eat ?',
                    style: TextStyle(
                      fontFamily: 'Futura',
                      fontSize: 24,
                      color: const Color(0xff282c40),
                      letterSpacing: -0.648,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search),
                            Text("Find your Food"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.grey[400], width: 1.0))),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.blue, width: 5.0))),
                          child: FlatButton(
                              onPressed: null,
                              child: Text(
                                'Pizza',
                                style: TextStyle(color: Colors.blue),
                              ))),
                      FlatButton(
                          onPressed: null,
                          child: Text(
                            'Burger',
                            style: TextStyle(color: Colors.black),
                          )),
                      FlatButton(
                          onPressed: null,
                          child: Text(
                            'Beverages',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          'Pizza',
                          style: TextStyle(
                              //fontFamily: 'Futura',

                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'See all',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Seeall()));
                                  }),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Category(),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          'Burger',
                          style: TextStyle(
                            fontFamily: 'Futura',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'See all',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Seeall()));
                                  }),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Category(),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          'Bevarages',
                          style: TextStyle(
                              //fontFamily: 'Futura',

                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'See all',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Seeall()));
                                  }),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Category(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends AnimatedWidget {
  MyDrawer({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    print(animation.value);
    return Container(
        color: Colors.blueAccent,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  "assets/human.png",
                ),
              ),
              title: Text(
                'Welcome Praveen',
                style: TextStyle(
                  fontFamily: 'Futura',
                  fontSize: 17,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.323,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.person, color: Colors.white),
                        title: Text(
                          "About Us",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.shopping_cart, color: Colors.white),
                        title: Text(
                          "My Order",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.person, color: Colors.white),
                        title: Text(
                          "About us",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: Text(
                          "My Address",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.contact_phone, color: Colors.white),
                        title: Text(
                          "Contact Us",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.info, color: Colors.white),
                        title: Text(
                          "Terms of Use",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(children: [
                      Positioned(
                        left: MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width /
                                animation.value -
                            20,
                        top: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                color: Colors.white54,
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height / 1.3 -
                                        40,
                              )),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width / animation.value,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height / 1.3,
                                child: AbsorbPointer(child: MyApp())),
                          ),
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

class MyAnimation extends StatefulWidget {
  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    animation = Tween<double>(begin: 2.1, end: 1.5).animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          //_controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      })
      ..addStatusListener((state) => print('$state'));
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyDrawer(
      animation: animation,
    );
  }
}
