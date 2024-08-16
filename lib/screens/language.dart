import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  // Class name changed to Language
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState(); // Updated state class name
}

class _LanguageState extends State<Language> {
  bool english = true;
  bool frensh = false;
  bool german = false;
  bool china = false;
  bool jaban = false;
  bool turkey = false;
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
                "Langauge",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Select a langauge",
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
                  english = !english;
                });
              },
              child: Container(
                height: height * 0.07,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: english
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
                      "assets/images/us.webp",
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "English",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  frensh = !frensh;
                });
              },
              child: Container(
                height: height * 0.07,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: frensh
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
                      "assets/images/france.webp",
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Frensh",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  german = !german;
                });
              },
              child: Container(
                height: height * 0.07,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: german
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
                      "assets/images/germany.webp",
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "German",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  china = !china;
                });
              },
              child: Container(
                height: height * 0.07,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: china
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
                      "assets/images/china.png",
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Chinese",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  jaban = !jaban;
                });
              },
              child: Container(
                height: height * 0.07,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: jaban
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
                      "assets/images/jaban.png",
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Jabanese",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  turkey = !turkey;
                });
              },
              child: Container(
                height: height * 0.07,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: turkey
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
                      "assets/images/turkey.png",
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Turkish",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
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
