import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double subtotal = 200.7 + 2800.7 + 2800.7 + 70.0 + 245.0; 

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Column(
            children: [
              Text(
                "Your Cart",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "5 Products",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            children: [
              buildCartItem("assets/images/printer.jpg", "Bluetooth Printer", 200.7, width),
              buildCartItem("assets/images/macbook.jpg", "Macbook '200 Pro", 2800.7, width),
              buildCartItem("assets/images/iphone.png", "iPhone", 2800.7, width),
              buildCartItem("assets/images/sunglass.jpg", "Anti-Blue light glasses", 70.0, width),
              buildCartItem("assets/images/watch.jpg", "Waterproof watch", 245.0, width),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(height * 0.02),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(36, 158, 158, 158),
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Container(
          height: height*0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text("Subtotal", style: TextStyle(color: Colors.grey)),
                    Text("\$${subtotal.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Divider(),
                                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text("Total", style: TextStyle(color: Colors.grey)),
                    Text("\$${subtotal.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 148, 123, 235),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                  ),
                  onPressed: () {
                    setState(() {
                    Navigator.pushNamed(context, "check_out");
                      
                    });
                  },
                  child: Text("Checkout"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCartItem(String imagePath, String itemName, double price, double width) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(36, 158, 158, 158),
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              width: 130,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemName, style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text("\$${price.toStringAsFixed(2)}", style: TextStyle(fontSize: 18, color: Colors.grey)),
            ],
          ),
          Counter(),
          SizedBox(width: 1),
        ],
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          icon: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 148, 123, 235),
          ),
        ),
        Text("$count"),
        IconButton(
          onPressed: () {
            setState(() {
              if (count > 1) {
                count--;
              }
            });
          },
          icon: const Icon(
            Icons.remove,
            color: Color.fromARGB(255, 148, 123, 235),
          ),
        ),
      ],
    );
  }
}
