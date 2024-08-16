import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
        double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width*0.01, vertical: height*0.07 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Login to your existing account",
                  style: TextStyle(fontSize: 20), // Adjust font size for clarity
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.jpeg",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: const Text(
                  "Email Address",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your email",
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: const Text(
                  "Password",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "e.g: *********",
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )),
              const SizedBox(height: 10,),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 148, 123, 235),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                    ),
                  child: const Text("Login", style: TextStyle(fontSize: 20),),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/google.jpg",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipOval(
                      child: Image.asset("assets/images/facebook.webp",
                          height: 50, width: 50, fit: BoxFit.cover))
                ],
              ),
              const Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    "Don't have an accout",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Text(" Sign up!",
                      style: TextStyle(color: Color.fromARGB(255, 148, 123, 235), fontSize: 20)), 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
