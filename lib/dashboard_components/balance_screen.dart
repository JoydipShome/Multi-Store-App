import 'package:flutter/material.dart';

import '../widgets/appbar_widgets.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppbarTitle(title: 'Balance Screen'),
          leading: const AppBarBackButton()),
    );
  }
}
