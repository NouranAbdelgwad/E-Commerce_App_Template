import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).viewPadding.top;
    double height = MediaQuery.sizeOf(context).height - statusBar;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Notifications",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNotification("assets/images/macbook.jpg", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", "10:00 AM", width),
              buildNotification("assets/images/watch.jpg", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", "10:00 AM", width),
              const SizedBox(height: 10,),
              const Text(
              "Your activity",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            orderDatails(const Icon(Icons.check, color: Color.fromARGB(255, 148, 123, 235)),"Order Arrived", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Yesterday, 10:45 AM", width),
            orderDatails(const Icon(Icons.paste, color: Color.fromARGB(255, 148, 123, 235)),"Order Arrived", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Yesterday, 10:45 AM", width),
            orderDatails(const Icon(Icons.payment_outlined, color: Color.fromARGB(255, 148, 123, 235)),"Order Arrived", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Yesterday, 10:45 AM", width),
            ],
          ),
        ),
      ),
    );
  }
}

Widget orderDatails(Icon iconName,String status, String describtion, String time, double width) {
  return Container(
    padding: const EdgeInsets.all(10),
    clipBehavior: Clip.hardEdge,
    margin: const EdgeInsets.only(top: 10),
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
        Container(
          margin: const EdgeInsets.all(15),
          child: CircleAvatar(
            radius: width * 0.05, 
            backgroundColor: Colors.grey[200], 
            child: iconName, 
          ),
        ),
        SizedBox(
          width: width*0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                status,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                describtion,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                "$time",
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
        const SizedBox(width: 1),
      ],
    ),
  );
}


Widget buildNotification(String imagePath, String describtion, String time, double width) {
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
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              width: width*0.3,
              height: width*0.3,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(describtion, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis), maxLines: 2,),
                const SizedBox(height: 10),
                Text("$time", style: const TextStyle(fontSize: 18, color: Colors.grey)),
              ],
            ),
          ),
          const SizedBox(width: 1),
        ],
      ),
    );
  }
