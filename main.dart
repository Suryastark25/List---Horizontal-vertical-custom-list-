import 'package:flutter/material.dart';
import 'screens/combined_list_view.dart'; // Import the CombinedListView screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal and Vertical Lists',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CombinedListView(), // Set the CombinedListView as the home screen
    );
  }
}
