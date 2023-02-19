import 'package:flutter/material.dart';
import 'package:flutter_application/utils/colorConstant.dart';
import 'package:flutter_application/views/Login.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned(
        child: Image.asset(
          "assets/images/Rectangle 118.png",
          width: 500,
          height: 420,
          fit: BoxFit.fill,
        ),
      ),
      Image.asset(
        "assets/images/Vector.png",
        width: 500,
        height: 420,
      ),
      Padding(
        padding: EdgeInsets.all(100),
        child: Image.asset(
          "assets/images/plant.png",
          alignment: Alignment.topRight,
          height: 250,
          width: 250,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 240),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/name-removebg-preview.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            )),
      ),
      Padding(
          padding: EdgeInsets.only(left: 50, top: 450.0),
          child: Text(
              "GET READY \nBE HIGYENIC\n\nJelajahi AiLearn untuk menambah kemampuanmu\ndalam mengoperasikan Adobe Illustrator",
              style: TextStyle(
                color: Color1.greencolor,
                fontSize: 14,
              ))),
      Padding(
        padding: const EdgeInsets.only( top: 550.0),
        child: Align(alignment: Alignment.topCenter,
          child: ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: Color1.greencolor),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text("Get Started")),
        ),
      )
    ]));
  }
}
