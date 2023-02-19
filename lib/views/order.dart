import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            child: Text("Order",style: TextStyle(fontSize:26,fontWeight: FontWeight.bold,color: Color.fromRGBO(13, 152, 106, 1)),),
          ),
          SizedBox(height: 20,),
          Container(
            child: Text("Received",style: TextStyle(fontSize:26,fontWeight: FontWeight.bold,color: Color.fromRGBO(13, 152, 106, 1))),
          ),
          SizedBox(height: 20,),
          Container(
            child: Text("Order id",style: TextStyle(fontSize:16)),
          ),
          Container(
            child: Image.asset("assets/images/order.png"),
          ),
          SizedBox(height: 20,),
         ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(13, 152, 106, 1),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                onPressed: () {},
                child: Text("LOGOUT"),
              ),
        ]),
      ),
    );
  }
}