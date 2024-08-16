import 'package:flutter/material.dart';

class MyCards extends StatefulWidget {
  // Class name changed to MyCards
  const MyCards({Key? key}) : super(key: key);

  @override
  _MyCardsState createState() => _MyCardsState(); // Updated state class name
}

class _MyCardsState extends State<MyCards> {
  bool black = true;
  bool grey = false;
  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).viewPadding.top;
    double height = MediaQuery.sizeOf(context).height - statusBar;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Column(
            children: [
              Text(
                "My Cards",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Your payment cards",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  black = !black;
                });
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: width * 0.85,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: black
                            ? const Color.fromARGB(255, 148, 123, 235)
                            : Colors.white,
                        width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0, 2),
                          color: Color.fromARGB(52, 158, 158, 158))
                    ]),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/black_visa.webp",
                      width: width * 0.78,
                      height: height * 0.26,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
                        GestureDetector(
              onTap: () {
                setState(() {
                  grey = !grey;
                });
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: width * 0.85,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: grey
                            ? const Color.fromARGB(255, 148, 123, 235)
                            : Colors.white,
                        width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0, 2),
                          color: Color.fromARGB(52, 158, 158, 158))
                    ]),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/grey_visa.webp",
                      width: width * 0.78,
                      height: height * 0.26,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
