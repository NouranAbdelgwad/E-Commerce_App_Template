import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogInTask extends StatelessWidget {
  const LogInTask({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(hintText: "Enter your email"),
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(hintText: "Enter your password"),
                obscureText: true, // Hide password input
              ),
              ElevatedButton(
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  await prefs.setString('email', emailController.text);
                  await prefs.setString('password', passwordController.text);
                  await prefs.setBool("is_login", true);
                  print(prefs.getString("email"));
                  Navigator.pushReplacementNamed(context, "home");
                },
                child: Text("Log In"),
              ),
              ElevatedButton(
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  await prefs.clear();
                },
                child: Text("Clear"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
