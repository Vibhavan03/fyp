import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('ESP32 Controller',style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  controlDevice(true);
                },
                child: Text('Turn On',style: TextStyle(color: Colors.black),),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  controlDevice(false);
                },
                child: Text('Turn Off',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void controlDevice(bool isOn) async {
    String url = isOn ? 'http://192.168.4.1/15/on' : 'http://192.168.4.1/15/off';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print('Success: ${response.body}');
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
