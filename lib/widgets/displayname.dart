import 'package:flutter/material.dart';


class DisplayName extends StatelessWidget {
   String firstName;
   String secondName;
   String prefix;
   String suffix;

   DisplayName({
    required this.firstName,
    required this.secondName,
    this.prefix = '',
    this.suffix = '',
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$prefix $firstName $secondName $suffix',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
