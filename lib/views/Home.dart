import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application/utils/colorConstant.dart';
import 'package:flutter_application/views/order.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: Color1.whitecolor,
          appBar: AppBar(
            toolbarHeight: 65,
            elevation: 0,
            backgroundColor: Color1.appbar,
            title: Text(
              "Plantify",
              style: TextStyle(color: Color1.txt, fontWeight: FontWeight.bold),
            ),
            iconTheme: IconThemeData(color: Color1.txt),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notification_add,
                  color: Color1.txt,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Color1.txt,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          drawer: Drawer(
              backgroundColor: Color1.drawer,
              child: ListView(children: [
                Padding(padding: EdgeInsets.all(20.0)),
                ListTile(
                  leading: Icon(
                    Icons.shop,
                    color: Color1.whitecolor,
                  ),
                  title: Text(
                    'Shop',
                    style: TextStyle(color: Color1.whitecolor),
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Color1.whitecolor),
                  title: Text('PlantCare',
                      style: TextStyle(color: Color1.whitecolor)),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.share, color: Color1.whitecolor),
                  title: Text('Community',
                      style: TextStyle(color: Color1.whitecolor)),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.people, color: Color1.whitecolor),
                  title: Text('My Account',
                      style: TextStyle(color: Color1.whitecolor)),
                ),
                ListTile(
                  leading: Icon(Icons.track_changes, color: Color1.whitecolor),
                  title: Text('Track Order',
                      style: TextStyle(color: Color1.whitecolor)),
                  onTap: () => null,
                ),
                Divider(),
                ListTile(
                  title:
                      Text('Exit', style: TextStyle(color: Color1.whitecolor)),
                  leading: Icon(Icons.exit_to_app, color: Color1.whitecolor),
                  onTap: () => null,
                ),
              ])),
          body: SingleChildScrollView(
            child: Stack(children: [
              Positioned(
                child: Image.asset(
                  "assets/images/image 19.png",
                ),
                left: 65,
              ),
              SizedBox(
                height: 250,
              ),
              Container(
                  width: double.infinity,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 210, 40, 0),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for something',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.qr_code_scanner_outlined)),
                    ),
                  )),
              Container(
                  width: double.infinity,
                  // height: 40,
                  margin: EdgeInsets.fromLTRB(20, 240, 5, 5),
                  padding: EdgeInsets.all(10),
                  child: TabBar(
                    indicatorColor: Color1.greencolor,
                    isScrollable: true, //Change background color from here
                    tabs: [
                      Tab(
                          child: Text(
                        'Top Pick',
                        style: TextStyle(color: Color1.greencolor),
                      )),
                      Tab(
                          child: Text('Indoor',
                              style: TextStyle(color: Color1.txt))),
                      Tab(
                          child: Text('Outdoor',
                              style: TextStyle(color: Color1.txt))),
                      Tab(
                          child: Text('Seeds',
                              style: TextStyle(color: Color1.txt))),
                      Tab(
                          child: Text('Planters',
                              style: TextStyle(color: Color1.txt))),
                    ],
                  )),
              Container(
                // height: 40,
                margin: EdgeInsets.fromLTRB(100, 300, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/images/Container.png"),
              ),
              Positioned(
                top: 290,
                left: 100,
                height: 230,
                width: 230,
                child: Container(
                  child: Image.asset("assets/images/Rounds.png"),
                ),
              ),
              Positioned(
                  top: 280,
                  left: 280,
                  height: 180,
                  width: 200,
                  child: Image.asset(
                    "assets/images/vase1.png",
                  )),
              Positioned(top: 350, left: 150, child: Text("Air Purifier")),
              Positioned(
                  top: 380,
                  left: 150,
                  child: Text(
                    "Peperomia",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )),
              Positioned(
                top: 420,
                left: 150,
                child: Container(
                    child: Text(
                  " Rs500",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
              ),
              Positioned(
                top: 420,
                left: 250,
                child: Container(
                  child: Image.asset("assets/images/Vector 1.png"),
                ),
              ),
              Positioned(
                top: 410,
                left: 290,
                child: Container(
                  child: Image.asset("assets/images/shop.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(100, 520, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/images/Rectangle 28.png"),
              ),
              Positioned(
                top: 500,
                left: 100,
                height: 230,
                width: 230,
                child: Container(
                  child: Image.asset("assets/images/Rounds.png"),
                ),
              ),
              Positioned(
                  top: 490,
                  left: 280,
                  height: 180,
                  width: 200,
                  child: Image.asset(
                    "assets/images/vase2.png",
                  )),
              Positioned(top: 580, left: 150, child: Text("Air Purifier")),
              Positioned(
                  top: 610,
                  left: 150,
                  child: Text(
                    "Watermelon..",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )),
              Positioned(
                top: 650,
                left: 150,
                child: Container(
                    child: Text(
                  " Rs500",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
              ),
              Positioned(
                top: 650,
                left: 250,
                child: Container(
                  child: Image.asset("assets/images/Vector 1.png"),
                ),
              ),
              Positioned(
                top: 640,
                left: 290,
                child: Container(
                  child: Image.asset("assets/images/shop.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(100, 720, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/images/Rectangle 45.png"),
              ),
              Positioned(
                  top: 770,
                  left: 320,
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    "assets/images/bg-logo.png",
                  )),
              Positioned(
                  top: 760,
                  left: 150,
                  child: Text(
                    "Invite a Friend and \nearn Plantify rewards",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
              Positioned(
                  top: 810,
                  left: 150,
                  child: Container(
                      child: Text(
                    "Redeem them to get\ninstant discounts",
                    style: TextStyle(color: Color1.greencolor, fontSize: 10),
                  ))),
              Positioned(
                  top: 810,
                  left: 250,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Invite"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color1.greencolor,
                    ),
                  )),
            ]),
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Color1.txt,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outlined,
                  color: Color1.txt,
                ),
                label: "fav"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Order()));
                  },
                  child: Icon(
                    Icons.shop_2_outlined,
                    color: Color1.txt,
                  ),
                ),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                  color: Color1.txt,
                ),
                label: "Profile")
          ])),
    );
  }
}
