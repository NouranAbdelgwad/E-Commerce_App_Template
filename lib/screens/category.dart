import 'package:flutter/material.dart';
import 'package:session_7/screens/home.dart'; // Ensure this import is correct.

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).viewPadding.top;
    double height = MediaQuery.of(context).size.height - statusBar;
    double width = MediaQuery.of(context).size.width;
    List<Map<String, dynamic>> items = [
      {
        "image": "assets/images/computers.jpg",
        "title": "Computers",
      },
      {
        "image": "assets/images/phones.jpg",
        "title": "Phones & Accessories",
      },
      {
        "image": "assets/images/office.jpg",
        "title": "Office Equipments",
      },
      {
        "image": "assets/images/lights.jpg",
        "title": "Lightening and lights",
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.07),
          child: Column(
            children: [
              MySearchBar(width: width, text: "Search Category"),
              const SizedBox(height: 10,), // Ensure MySearchBar is defined
              SizedBox(
                height: height * 0.4, // Set a height for the GridView
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: width / (height * 0.4), // Adjust aspect ratio for desired height
                  ),
                  itemCount: items.length, // Use items.length instead of a fixed number
                  itemBuilder: (context, index) {
                    return Container(
                    margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(items[index]['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black.withOpacity(0.5),
                            ),
                            alignment: Alignment.topLeft,
                            child: Text(
                              items[index]['title'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
