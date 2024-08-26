import 'package:flutter/material.dart';
import 'package:session_7/screens/notifications.dart';
import 'package:session_7/screens/cart.dart';
import 'package:session_7/screens/check_out.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:session_7/screens/contact_us.dart';
import 'package:session_7/screens/counter.dart';
import 'package:session_7/screens/edit_profile.dart';
import 'package:session_7/screens/home.dart';
import 'package:session_7/screens/language.dart';
import 'package:session_7/screens/layout.dart';
import 'package:session_7/screens/my_cards.dart';
import 'package:session_7/screens/my_orders.dart';
import 'package:session_7/screens/payment.dart';
import 'package:session_7/screens/product_detail.dart';
import 'package:session_7/screens/settings.dart';
import 'package:session_7/screens/shipping_address.dart';
import 'package:session_7/screens/sign_in.dart';
import 'package:session_7/screens/sign_up_page.dart';
import 'package:session_7/screens/splash_screen.dart';
import 'package:session_7/screens/verification.dart';
import 'package:session_7/screens/category.dart';
import 'package:session_7/screens/task.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-commerce",
      initialRoute: "splash",
      routes: {
        "splash": (context) => SplashScreen(),
        "verification": (context) => Verification(),
        "my_orders": (context)=>MyOrders(),
        "edit":(context)=>EditProfile(),
        "home": (context)=>HomePage(),
        "settings": (context)=>Settings(),
        "sign_in": (context)=>SignIn(),
        "sign_up": (context)=>SignUpPage(),
        "contact": (context)=>ContactUs(),
        "category":(context)=>const CategoryPage(),
        "layout": (context)=>const Layout(),
        "language": (context)=>const Language(),
        "my_cards": (context)=>const MyCards(),
        "shipping_address": (context)=>const ShippingAddress(),
        "payment": (context)=>const Payment(),
        "product_detail": (context)=>const ProductDetail(),
        "cart": (context)=>const Cart(),
        "check_out": (context)=>const CheckOut(),
        "counter": (context)=>const MyCounter(),
        "login_task":(context)=>const LogInTask(),
        "notifications": (context)=>const Notifications(),
      },
    );
  }
}


