import 'package:atm_manager/pages/ScreenFour.dart';
import 'package:atm_manager/pages/ScreenOne.dart';
import 'package:atm_manager/pages/ScreenThree.dart';
import 'package:atm_manager/pages/ScreenTwo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set this to false
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Layout Example'),
      ),
      body: MyGridLayout(),
    );
  }
}

class MyGridLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Number of columns in the grid
      children: <Widget>[
        MyGridItem(color: Colors.red, label: 'Item 1'),
        MyGridItem(color: Colors.blue, label: 'Item 2'),
        MyGridItem(color: Colors.green, label: 'Item 3'),
        MyGridItem(color: Colors.orange, label: 'Item 4'),
      ],
    );
  }
}

class MyGridItem extends StatelessWidget {
  final Color color;
  final String label;

  MyGridItem({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenOne()),
                );
              },
              child: Text('Open Screen 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenTwo()),
                );
              },
              child: Text('Open Screen 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenThree()),
                );
              },
              child: Text('Open Screen 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenFour()),
                );
              },
              child: Text('Open Screen 4'),
            ),
          ],
        ),
      ),
    );
  }
}
