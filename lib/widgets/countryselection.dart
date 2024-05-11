import 'package:flutter/material.dart';

class CountrySelection extends StatefulWidget {
  const CountrySelection({Key? key}) : super(key: key);

  @override
  State<CountrySelection> createState() => _CountrySelectionState();
}

class _CountrySelectionState extends State<CountrySelection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton<String>(
          value: _selectedCountry,
          onChanged: (String? newValue) {
            setState(() {
              _selectedCountry = newValue!;
              _selectedState = _stateData[newValue]![0]; // Set default state based on country change
            });
          },
          items: _stateData.keys.map((String country) {
            return DropdownMenuItem<String>(
              value: country,
              child: Text(country),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        DropdownButton<String>(
          value: _selectedState,
          onChanged: (String? newValue) {
            setState(() {
              _selectedState = newValue!;
            });
          },
          items: _stateData[_selectedCountry]!.map((String state) {
            return DropdownMenuItem<String>(
              value: state,
              child: Text(state),
            );
          }).toList(),
        ),
      ],
    );
  }
}
