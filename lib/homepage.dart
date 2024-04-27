import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      body: Center(
        child: Container(
          height: 20,
          child: RangeSlider(
              values: values,
              labels: labels,
              divisions: 10,
              activeColor: Colors.grey,
              inactiveColor: Colors.grey.shade100,
              onChanged: (newValue) {
                values = newValue;
                setState(() {});
              }),
        ),
      ),
    );
  }
}
