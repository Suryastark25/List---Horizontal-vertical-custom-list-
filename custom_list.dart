import 'package:flutter/material.dart';

class CombinedListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vertical and Horizontal List")),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          // Title for Vertical List
          Text(
            "Vertical List",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),

          // Vertical Custom List
          customListItem('Vertical Item 1', 'This is vertical item 1'),
          customListItem('Vertical Item 2', 'This is vertical item 2'),
          customListItem('Vertical Item 3', 'This is vertical item 3'),

          SizedBox(height: 30.0),

          // Title for Horizontal List
          Text(
            "Horizontal List",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),

          // Horizontal Custom List
          Container(
            height: 200.0, // Fixed height for the horizontal list
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                customHorizontalListItem('Horizontal Item 1', 'This is horizontal item 1'),
                customHorizontalListItem('Horizontal Item 2', 'This is horizontal item 2'),
                customHorizontalListItem('Horizontal Item 3', 'This is horizontal item 3'),
                customHorizontalListItem('Horizontal Item 4', 'This is horizontal item 4'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Custom widget for Vertical List Items
  Widget customListItem(String title, String subtitle) {
    return Card(
      elevation: 4.0, // Adds a shadow to the card
      margin: EdgeInsets.symmetric(vertical: 10.0), // Adds vertical margin
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Adds padding inside the card
        child: Row(
          children: [
            Icon(Icons.label, size: 40.0, color: Colors.blue), // Icon for each item
            SizedBox(width: 20.0), // Adds space between icon and text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ), // Title of the item
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
                ), // Subtitle of the item
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Custom widget for Horizontal List Items
  Widget customHorizontalListItem(String title, String subtitle) {
    return Container(
      width: 200.0, // Fixed width for each horizontal list item
      margin: EdgeInsets.symmetric(horizontal: 10.0), // Adds horizontal margin
      child: Card(
        elevation: 4.0, // Adds a shadow to the card
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Adds padding inside the card
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centers content vertically
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
            children: [
              Icon(Icons.label, size: 40.0, color: Colors.orange), // Icon for each item
              SizedBox(height: 10.0), // Adds space between icon and text
              Text(
                title,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ), // Title of the item
              Text(
                subtitle,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
              ), // Subtitle of the item
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CombinedListView(), // Launch the CombinedListView screen
  ));
}
