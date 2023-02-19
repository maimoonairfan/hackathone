import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application/utils/colorConstant.dart';
import 'package:flutter_application/views/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  register() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;
    final String email = emailController.text;
    final String password = passwordController.text;
    try {
      final UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      db
          .collection("users")
          .doc(user.user?.uid)
          .set({'email': email, 'password': password});
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color1.whitecolor,
      appBar: AppBar(
        elevation: 0,
            backgroundColor: Color1.appbar,
            leading: Image.asset("assets/images/logo.png"),
            title: Text(
              "Plantify",
              style: TextStyle(color: Color1.txt),
            ),
        ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text("SignUp",
                    style: TextStyle(
                        color: Color1.greencolor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                    "Masukan NISN dan password untuk \n \n memulai belajar sekarang",
                    style: TextStyle(
                        color: Color1.greencolor, fontSize: 14)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft, child: Text("UserName/Email")),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(alignment: Alignment.centerLeft, child: Text("Password")),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              // height: 50,
              // width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:Color1.greencolor,
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                onPressed: () {
                  register();
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Login())));
                },
                child: Text("SignUp"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
