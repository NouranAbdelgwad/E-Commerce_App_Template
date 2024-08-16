import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).viewPadding.top;
    double height = MediaQuery.sizeOf(context).height - statusBar;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: height * 0.07),
          child: Column(
            children: [
              Row(
                children: [
                  MySearchBar(width: width*0.64, text: "Search Product",),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "cart");
                    },
                    child: Container(
                      
                      padding: const EdgeInsets.all(11),
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(36, 158, 158, 158),
                                blurRadius: 2,
                                spreadRadius: 2)
                          ]),
                      child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Color.fromARGB(255, 148, 123, 235),
                                
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "notifications");
                    },
                    child: Container(
                      padding: const EdgeInsets.all(11),
                      margin: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(36, 158, 158, 158),
                                blurRadius: 2,
                                spreadRadius: 2)
                          ]),
                      child: const Icon(
                          Icons.notifications_outlined,
                          color: Color.fromARGB(255, 148, 123, 235),
                                
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special for you",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See More",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ImageHorizontalScroll(const [
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
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Products",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See More",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ],
              ),
              FeaturedProducts(),
                const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Selling products",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See More",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ],
              ),
              FeaturedProducts(),
        
            ],
          ),
        ),
      ),
    );
  }
}

class MySearchBar extends StatefulWidget {
  final double width; 
  final String text;

  MySearchBar({required this.width, required this.text}); 

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(36, 158, 158, 158),
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.text, 
          prefixIcon: const Icon(
            Icons.search,
            color: Color.fromARGB(255, 148, 123, 235),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}


class ImageHorizontalScroll extends StatelessWidget {
  ImageHorizontalScroll(this.items);
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
            width: width * 0.6,
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(items[index]['image']!),
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
                    items[index]['title']!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FeaturedProducts extends StatefulWidget {
  const FeaturedProducts({super.key});
  
  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  List<Map<String, dynamic>> products = [
    {
      "image": "assets/images/printer.jpg",
      "name": "Bluetooth Printer",
      "price": 200.75
    },
    {
      "image": "assets/images/macbook.jpg",
      "name": "Macbook '22 Air",
      "price": 2800.0
    },
    {
      "image": "assets/images/iphone.png",
      "name": "iPhone 14 ProMax",
      "price": 1459.0
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, 
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, "product_detail");
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.hardEdge,
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    products[index]["image"]!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                products[index]["name"]!,
                style: const TextStyle(fontSize: 17),
              ),
              Text(
                "\$ ${products[index]['price']!}",
                style: const TextStyle(fontSize: 15),
              ),
            ],
          );
        },
      ),
    );
  }
}

