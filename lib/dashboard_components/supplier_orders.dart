import 'package:flutter/material.dart';

import '../widgets/appbar_widgets.dart';

class SupplierOrders extends StatelessWidget {
  const SupplierOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const AppbarTitle(title: 'Supplier Orders'),
          leading: const AppBarBackButton()),
    );
  }
}
