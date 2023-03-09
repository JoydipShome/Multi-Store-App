import 'package:flutter/material.dart';

import '../widgets/appbar_widgets.dart';

class SubCategProducts extends StatelessWidget {
  const SubCategProducts({
    Key? key,
    required this.subcategName,
    required this.maincategName,
  }) : super(key: key);
  final String maincategName;
  final String subcategName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const AppBarBackButton(),
        title: AppbarTitle(title: subcategName),
      ),
      body: Center(
        child: Text(maincategName),
      ),
    );
  }
}
