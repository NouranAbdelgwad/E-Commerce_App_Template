import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3), () async{
    await Future.delayed(const Duration(seconds: 3));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool("is_login") ?? false; // Default to false if null
    if (isLoggedIn) {
      Navigator.pushReplacementNamed(context, "layout");
    } else {
      Navigator.pushReplacementNamed(context, "sign_in");
    }
  });
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.jpeg",
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
              Text(
                'E-commerce UI Theme',
                style: GoogleFonts.dancingScript(
                  color: const Color.fromARGB(255, 148, 123, 235),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
      ),
    );
  }
}