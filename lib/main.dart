import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_trippldee/controllers/countryselectioncontroller.dart';
import 'package:task_trippldee/controllers/dropdowncontroller.dart';
import 'package:task_trippldee/views/dropdownview.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DropDownController()),
        ChangeNotifierProvider(create: (context) => CountrySelectionController())
      ],
      child: GestureDetector(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Task Trippldee',
          home: DropDownView(),
        ),
      ),
    );
  }
}