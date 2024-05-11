import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_trippldee/controllers/countryselectioncontroller.dart';

class CountrySelection extends StatefulWidget {
  const CountrySelection({Key? key}) : super(key: key);

  @override
  State<CountrySelection> createState() => _CountrySelectionState();
}

class _CountrySelectionState extends State<CountrySelection> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CountrySelectionController>(builder: (context, provider, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<String>(
            value: provider.selectedCountry,
            onChanged: (String? value) {
             provider.onChangeCountry(value!);
            },
            items: provider.Data.keys.map((String country) {
              return DropdownMenuItem<String>(
                value: country,
                child: Text(country),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          DropdownButton<String>(
            value: provider.selectedState,
            onChanged: (String? value) {
              provider.onChangeState(value!);
            },
            items: provider.Data[provider.selectedCountry]!.map((String state) {
              return DropdownMenuItem<String>(
                value: state,
                child: Text(state),
              );
            }).toList(),
          ),
        ],
      );
    },
    );
  }
}
