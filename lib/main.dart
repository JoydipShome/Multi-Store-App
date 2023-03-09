import 'package:flutter/material.dart';
import 'package:proj47_multi_store_app/auth/customer_signup.dart';
import 'package:proj47_multi_store_app/main_screens/dashboard.dart';
import 'package:proj47_multi_store_app/main_screens/welcome_screen.dart';
import 'main_screens/customer_home.dart';
import 'main_screens/supplier_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        // home: const WelcomeScreen(),
        initialRoute: '/customer_signup',
        routes: {
          '/welcome_screen': (context) => const WelcomeScreen(),
          '/customer_home': (context) => const CustomerHomeScreen(),
          '/supplier_home': (context) => const SupplierHomeScreen(),
          '/customer_signup': (context) => const CustomerRegister(),
        });
  }
}
