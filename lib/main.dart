import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatefulWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {
  bool _showText = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showText = true;
                  });
                },
                child: const Text('Press Me'),
              ),
              const SizedBox(height: 20),
              Visibility(
                visible: _showText,
                child: Container(
                  color: Colors.purple, // رنگ بنفش
                  child: const Text('Hello World'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}