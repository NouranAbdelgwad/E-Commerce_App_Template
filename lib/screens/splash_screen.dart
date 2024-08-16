import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3), () async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if(prefs.getBool("is_login")!){
      Navigator.pushReplacementNamed(context, "layout");
      } else{
              Navigator.pushReplacementNamed(context, "login_task");

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
                  color: Color.fromARGB(255, 148, 123, 235),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
      ),
    );
  }
}