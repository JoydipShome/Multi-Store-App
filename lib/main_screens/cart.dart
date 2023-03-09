import 'package:flutter/material.dart';
import 'package:proj47_multi_store_app/widgets/appbar_widgets.dart';

import '../widgets/yellow_button.dart';

class CartScreen extends StatefulWidget {
  final Widget? back;
  const CartScreen({Key? key, this.back}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: widget.back,
          title: const AppbarTitle(title: 'Cart'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                ))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your Cart is Empty',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 50),
              Material(
                borderRadius: BorderRadius.circular(25),
                color: Colors.lightBlueAccent,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * .6,
                  onPressed: () {
                    Navigator.canPop(context)
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(
                            context, '/customer_home');
                  },
                  child: const Text(
                    'Continue Shopping',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    'Total: \$ ',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '00.00',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            YellowButton(
              label: 'Checkout',
              onPressed: () {},
              width: 0.45,
            )
          ],
        ),
      ),
    ));
  }
}
