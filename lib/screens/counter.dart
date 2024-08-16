import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: ()async{
                    var pref = await SharedPreferences.getInstance();
                    setState(() {
                      counter++;
                      pref.setInt("counter", counter);
                      print(pref.getInt("counter"));
                    });
                  },
                  
                  child: const Text("+")),
              // Text("$pref.getInt('counter')"),
              Text("$counter"),
              ElevatedButton(
                  onPressed: ()async{
                    var pref = await SharedPreferences.getInstance();
                    setState(() {
                      counter--;
                      pref.setInt("counter", counter);
                    });
                  },
                  child: Text("-")
                  ),
            ],
          ),
        )
      ),
    );
  }
}
