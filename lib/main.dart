import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TabBoxA(),
    );
  }
}

// class CounterWidget extends StatefulWidget {
//   final int initValue;
//   const CounterWidget({ Key? key, required this.initValue }) : super(key: key);

//   @override
//   State<CounterWidget> createState() => _CounterWidgetState();
// }

// class _CounterWidgetState extends State<CounterWidget> {
//   int _counter = 0;

//   @override
//   void initState() {
//     super.initState();
//     _counter = widget.initValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           setState(() => ++_counter);
//         }
//       ),
//       body: Container(
//         child: Text('$_counter'),
//       ),
//     );
//   }

//   @override
//   void didUpdateWidget(CounterWidget oldWidget) {
//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   void deactivate() {
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   void reassemble() {
//     super.reassemble();
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Echo(text: 'XXXX', backgroundColor: Colors.deepOrange,);
//   }
// }


// class Echo extends StatelessWidget {
//   const Echo({ Key? key, required this.text, this.backgroundColor = Colors.grey }): super(key: key);
//   final String text;
//   final Color backgroundColor;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(text, style: TextStyle(color: Colors.green),),),
//       body: Container(
//         color: backgroundColor,
//         child: Builder(builder: (context) {
//           Scaffold? scaffold = context.findAncestorWidgetOfExactType<Scaffold>();

//           return (scaffold?.appBar as AppBar).title ?? Text('Default Title');
//         },),
//       )
//     );
//   }
// }

class TabBoxA extends StatefulWidget {
  const TabBoxA({Key? key}) : super(key: key);

  @override
  _TabBoxAState createState() => _TabBoxAState();
}

class _TabBoxAState extends State {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          )
        )
      )
    );
  }
}