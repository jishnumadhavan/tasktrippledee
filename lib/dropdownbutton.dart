import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_trippldee/controllers/searchpageconrtoller.dart';

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {

  @override
  Widget build(BuildContext context) {
    return Consumer<DropDownController>(builder: (context, provider, child) {
      return DropdownButton<String>(
        value: provider.selectedAction,
        onChanged: (String? newValue) {
          provider.onChange(newValue!);
        },
        items: provider.Items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: value == 'Delete' ? TextStyle(color: Colors.red) : null,
            ),
          );
        }).toList(),
        dropdownColor: Colors.white,
        hint: Text('More Actions'),
      );
  }
    );
  }
}