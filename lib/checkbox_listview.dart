
import 'package:flutter/material.dart';

class CheckBoxListView extends StatefulWidget {
  const CheckBoxListView({Key? key}) : super(key: key);

  @override
  State<CheckBoxListView> createState() => _CheckBoxListViewState();
}

class _CheckBoxListViewState extends State<CheckBoxListView> {

  bool _isChecked = false;

  List<String> _sites = [
    'yahoo.com',
    'gmail.com',
    'youtube.com',
    'flutter.io',
    'google.com',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('CheckBox in Listview'),
      ),
      body: ListView(
        children: _sites.map((site) => CheckboxListTile(
            title: Text(site),
            value: _isChecked, onChanged: (value) {
              setState(() {
                _isChecked = value!;
              });
        }
        )).toList(),
      ),
    );
  }
}
