import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Text Widget for the welcome message
            Text(
              'Welcome to My Flutter App!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Space between the Text and ElevatedButton
            // ElevatedButton Widget
            ElevatedButton(
              onPressed: () {
                // Print message to the console when the button is clicked
                print('Button Pressed!');
              },
              child: Text('Press Me'),
            ),
            SizedBox(height: 20), // Space between the ElevatedButton and Image
            // Image Widget
            Image.network(
              'https://via.placeholder.com/150', // Replace with the URL of your choice
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}