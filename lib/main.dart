import 'package:flutter/material.dart';

void main() {
  runApp(mybio());
}

class mybio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Page',
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  final List<Map<String, dynamic>> AboutMe = [
    {
      'Nama': 'Gabriella Jessica Prawira',
      'NRP': '5026221175', 
      'Fun Fact': 'Saya tidak makan dan tidak suka kulit ayam',
    },
  ];
  Widget build (BuildContext context){
    var about = AboutMe[0];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 231, 237),
      appBar: AppBar(
        title: Text('About Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        CircleAvatar(
        radius: 100,
        foregroundImage: AssetImage('assets/jes_tekber_pic.jpg'),
        ),
        SizedBox(height: 18),
        Text(
          about['Nama'],
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.cyan),
        ),
        SizedBox(height: 18),
        Text(
          about['NRP'],
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 18),
        Text(
          about['Fun Fact'],
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
        ),
      )
    );
  }
}