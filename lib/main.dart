import 'package:flutter/material.dart';
import './CounterDemo.dart';
import './RouteDemo.dart';
import './ButtonDemo.dart';
import './ImageDemo.dart';
import './FormDemo.dart';

void main() {
  // runApp(const RouteDemo());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      initialRoute: 'default',
      home: MyHomePage(title: 'xxxx'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        // child: CounterDemo(),
        // child: ButtonDemo(),
        // child: ImageDemo(),
        child: FormDemo(),
      ),
    );
  }
}

