import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        ),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your information below to sign up",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/splash_screen_img.png",
                    height: 100,
                    width: 100,
                  )
                ],
              ),
              FormWidget()
            ],
          ),
        ));
  }
}

class FormWidget extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(146, 158, 158, 158),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 1),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Please enter your name",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter you name!";
                      }
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(146, 158, 158, 158),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 1),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter your email",
                        labelText: "Email",
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email";
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return "invalid email";
                      }
                    },
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(146, 158, 158, 158),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(1, 1),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          labelText: "Password",
                          hintText: "Please enter your password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "enter your password";
                        } else if (!RegExp(
                                r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                            .hasMatch(value)) {
                          return 'Password must be at least 8 characters long, include uppercase, lowercase, a number, and a special character';
                        }
                      },
                    )), 
                    ElevatedButton(onPressed:(){
                bool val = formKey.currentState!.validate();
                if (val) {
                  print("success");
                } else {
                  print("error");
                }
              } , child: Text("Login"), 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, // Background color
              foregroundColor: Colors.white, // Text color
              padding: EdgeInsets.symmetric(horizontal: 80), // Padding
            )
              
              )
              ],
            )), 
            Row(children: [
            Text("Already have an account? ", style: TextStyle(color: Colors.grey, fontSize: 20),),
            Text("Sign in", style: TextStyle(color: Colors.purple, fontSize: 20),)
            ],)
      ],
    );
  }
}
