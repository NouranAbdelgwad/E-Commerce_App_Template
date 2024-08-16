import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isOn = false; // State variable
  bool isOn2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Settings",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ]),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Card(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Push Notifications",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          Text(
                            "Off/ On ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          CupertinoSwitch(
                            activeColor: const Color.fromARGB(255, 148, 123, 235),
                            value: isOn,
                            onChanged: (value) {
                              setState(() {
                                isOn = value;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Card(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Theme",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          Text(
                            "Light/ Dark ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          CupertinoSwitch(
                            activeColor: const Color.fromARGB(255, 148, 123, 235),
                            value: isOn2,
                            onChanged: (value) {
                              setState(() {
                                isOn2 = value;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ), Container(
              child: Card(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Language",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      Row(
                        
                        children: [
                          Text(
                            "English  ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 35,),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
