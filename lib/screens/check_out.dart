import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:session_7/screens/home.dart';
import 'package:session_7/globals.dart' as globals;

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    globals.setScreenDimensions(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      )),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * 0.04),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Address",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("Change Address", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: Container(
                    width: width * 0.9,
                    padding: const EdgeInsets.all(20),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Doe, +201234569",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          "Schools street behind the office school,",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          "Maghdough, Said, London",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shipping Mode",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("Change Mode", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Container(
                    width: width * 0.9,
                    padding: const EdgeInsets.all(20),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flat Rate",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          "\$20",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Cart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("View More", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CartScroll(const [
                {"image": "assets/images/computers.jpg", "title": "Computers"},
                {
                  "image": "assets/images/phones.jpg",
                  "title": "Phones & Accessories"
                },
                {
                  "image": "assets/images/office.jpg",
                  "title": "Office Equipment"
                },
              ]),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Payment Method",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PaymentMethod("assets/images/a_pay.webp"),
                    PaymentMethod("assets/images/visa.webp"),
                    PaymentMethod("assets/images/paypal.webp"),
                    PaymentMethod("assets/images/master_card.png"),
                    PaymentMethod("assets/images/g_pay.png")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(height * 0.02),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(36, 158, 158, 158),
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Container(
          height: height * 0.05,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "\$170",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 148, 123, 235),
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero)),
                  onPressed: () {
                    Navigator.pushNamed(context, "payment");
                    setState(() {});
                  },
                  child: const Text("Pay Now"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartScroll extends StatelessWidget {
  CartScroll(this.items);
  List<Map<String, String>> items;
  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).viewPadding.top;
    double height = MediaQuery.sizeOf(context).height - statusBar;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            width: width * 0.3,
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(items[index]['image']!),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget PaymentMethod(String imagePath) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 148, 123, 235), width: 1
        ),
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(62, 190, 190, 190)),
    child: Image.asset(
      imagePath,
      width: globals.width* 0.15,
      height: globals.height*0.08,
    ));
} 
