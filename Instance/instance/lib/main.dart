//Create a Flutter application that contains an image of a puppy and a button that increases the size of the puppy (double the size each time the button is pressed).

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ZoomImageScreen(),
    );
  }
}

class ZoomImageScreen extends StatefulWidget {
  @override
  _ZoomImageScreenState createState() => _ZoomImageScreenState();
}

class _ZoomImageScreenState extends State<ZoomImageScreen> {
  double _width = 200;
  double _height = 200;

  void _increaseSize() {
    setState(() {
      if (_width < 500) {
        _width *= 2;
        _height *= 2;
      } else {
        _width = 200;
        _height = 200;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Zoom in")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: _width,
          height: _height,
          child: Image.network(
            'https://picsum.photos/250?image=9',
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseSize,
        child: Icon(Icons.zoom_in),
      ),
    );
  }
}
