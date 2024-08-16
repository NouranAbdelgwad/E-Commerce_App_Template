import 'package:flutter/material.dart';
import 'package:session_7/screens/notifications.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
        double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
            appBar: AppBar(
        title: const Center(
          child: Column(
            children: [
              Text(
                "Shipping Address",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Your Shipping Address",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.04, ),
        child: Column(children: [
            orderDatails(const Icon(Icons.location_on_outlined, color: Color.fromARGB(255, 148, 123, 235)),"John Doe, +095-1234567", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Yesterday, 10:45 AM", width),
            orderDatails(const Icon(Icons.location_on_outlined, color: Color.fromARGB(255, 148, 123, 235)),"John Doe, +095-1234567", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Yesterday, 10:45 AM", width),
            orderDatails(const Icon(Icons.location_on_outlined, color: Color.fromARGB(255, 148, 123, 235)),"John Doe, +095-1234567", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Yesterday, 10:45 AM", width),        ],),
      ),
    );
  }
}