import 'package:flutter/material.dart';

import '../dropdownbutton.dart';

class DropDownView extends StatefulWidget {
  const DropDownView({Key? key}) : super(key: key);

  @override
  State<DropDownView> createState() => _DropDownViewState();
}

class _DropDownViewState extends State<DropDownView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: DropdownWidget()),
    );
  }
}
