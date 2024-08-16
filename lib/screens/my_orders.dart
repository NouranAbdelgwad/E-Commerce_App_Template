import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "My Orders",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ]),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              color: Colors.white,
              shadowColor: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order #",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "26091945142",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "9/7/2022",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "\$ 1500.0",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Pending",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Details"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 148, 123, 235),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Track"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            // padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.white,
              shadowColor: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order #",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "26091945142",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "9/7/2022",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "\$ 1500.0",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Pending",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Details"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 148, 123, 235),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            // padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.white,
              shadowColor: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order #",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "26091945142",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "9/7/2022",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "\$ 1500.0",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Pending",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Details"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 148, 123, 235),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            // padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.white,
              shadowColor: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order #",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "26091945142",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          color: const Color.fromARGB(85, 158, 158, 158),
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "9/7/2022",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "\$ 1500.0",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Pending",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Details"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 148, 123, 235),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
