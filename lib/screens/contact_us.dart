import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController subjectController = TextEditingController();
    TextEditingController messageController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Contact Us",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ]),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.mobile_friendly_outlined,
                  color: Colors.purple,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "+123 98987654313",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail_outline,
                  color: Colors.purple,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "hello@example.com",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Subject",
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 126, 126, 126)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(47, 158, 158, 158),
                                offset: Offset(1, 3),
                                spreadRadius: 2,
                                blurRadius: 2)
                          ]),
                      child: TextFormField(
                          controller: subjectController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Type your subject here...",
                            fillColor: Colors.white,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter the name";
                            }
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your message",
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 126, 126, 126)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(47, 158, 158, 158),
                                offset: Offset(1, 3),
                                spreadRadius: 2,
                                blurRadius: 2)
                          ]),
                      child: TextFormField(
                        controller: messageController,
                        maxLines: 7,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: "Type your message here...",
                          fillColor: Colors.white,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter the message";
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              print("done");
                            } else {
                              print("faild");
                            }
                          },
                          child: Text("Send"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.symmetric(horizontal: 150),
                          ),
                        )
                      ],
                    ),
                  ],
                )
                )
          ],
        ),
      ),
    );
  }
}
