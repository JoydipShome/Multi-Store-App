import 'package:flutter/material.dart';

import '../widgets/appbar_widgets.dart';

class StaticsScreen extends StatelessWidget {
  const StaticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const AppbarTitle(title: 'Statics Screen'),
          leading: const AppBarBackButton()),
    );
  }
}
