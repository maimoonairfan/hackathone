import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/colorConstant.dart';
import 'package:flutter_application/views/Home.dart';
import 'package:flutter_application/views/Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Login() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;

    final String email = emailController.text;
    final String password = passwordController.text;

    try {
      final UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      await db.collection('users').doc(user.user?.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
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
                child: Text("Login",
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
                    "Masukan NISN dan password untuk \nmemulai belajar sekarang",
                    style: TextStyle(color: Color1.greencolor, fontSize: 14)),
              ),
            ),
            SizedBox(
              height: 30,
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
              height: 20,
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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text("Forgot Password?"),
              ),
            ),
            Container(
              // height: 50,
              // width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color1.greencolor,
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                onPressed: () {
                  Login();
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Home_Screen())));
                },
                child: Text("LOGIN"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignUp())));
                  },
                  child: const Text('Register',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
