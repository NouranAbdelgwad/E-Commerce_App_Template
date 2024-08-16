import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defualtPinTheme = PinTheme(
        width: 50,
        height: 50,
        textStyle: TextStyle(fontSize: 40, color: Colors.black),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(2, 2))
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white)));

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30, top: 60, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back),
            SizedBox(
              height: 20,
            ),
            Text(
              "Verification",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Please enter the OTP code sent to you by SMS",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Pinput(
                  length: 4,
                  defaultPinTheme: defualtPinTheme,
                )),
                SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't get the code?",
                  style: TextStyle(
                      color: Color.fromARGB(134, 0, 0, 0), fontSize: 20),
                ),
                Text(
                  " Send again",
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 100),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                    ),
                    child: Text(
                      "Verify",
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
