import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                color: Color.fromARGB(255, 148, 123, 235),
                size: 50,
              ),
              const Text(
                "Payment successful!",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "Your order will be processed and sent to you as soon as possible",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "home");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 148, 123, 235),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
                child: const Text("Continue Shopping"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
