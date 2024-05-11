import 'package:flutter/material.dart';

import '../widgets/countryselection.dart';
import '../widgets/dropdownbutton.dart';

class DropDownView extends StatefulWidget {
  const DropDownView({Key? key}) : super(key: key);

  @override
  State<DropDownView> createState() => _DropDownViewState();
}

class _DropDownViewState extends State<DropDownView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownWidget(),
            CountrySelection()
          ],
        )),
    );
  }
}
