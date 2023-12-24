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
      initialRoute: 'default',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // routes: {
      //   'default': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
      //   'new': (context) => TipRoute(text: 'aaaaa',),
      // },
      home: MyHomePage(title: 'xxxx'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
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
        // child: ButtonDemo(),
        child: ImageDemo(),
      ),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // Image(
          //   image: AssetImage('images/logo.png'),
          //   width: 200,
          // ),
          // Image.asset('images/logo.png', width: 200,),
          // Image(
          //   image: NetworkImage('https://www.baidu.com/img/flexible/logo/pc/result.png'),
          //   width: 200,
          // ),
          // Image.network('https://www.baidu.com/img/flexible/logo/pc/result.png', width: 200,),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 200,
          //     height: 100,
          //     fit: BoxFit.contain
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 200,
          //     height: 100,
          //     fit: BoxFit.cover
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 200,
          //     height: 100,
          //     fit: BoxFit.fill
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 200,
          //     height: 100,
          //     fit: BoxFit.fitHeight
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 200,
          //     height: 100,
          //     fit: BoxFit.fitWidth
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 200,
          //     height: 100,
          //     fit: BoxFit.none
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 200,
          //     height: 100,
          //     fit: BoxFit.scaleDown
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 200,
          //     height: 100,
          //     color: Colors.blue,
          //     colorBlendMode: BlendMode.difference,
          //     fit: BoxFit.scaleDown
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 200,
          //     height: 100,
          //     color: Colors.blue,
          //     colorBlendMode: BlendMode.color,
          //     fit: BoxFit.scaleDown
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 300,
          //     height: 300,
          //     fit: BoxFit.scaleDown,
          //     repeat: ImageRepeat.noRepeat,
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 300,
          //     height: 300,
          //     fit: BoxFit.scaleDown,
          //     repeat: ImageRepeat.repeat,
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 300,
          //     height: 300,
          //     fit: BoxFit.scaleDown,
          //     repeat: ImageRepeat.repeatX,
          //   ),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.red, width: 10),
          //   ),
          //   child: Image(
          //     image: AssetImage('images/logo.png'),
          //     width: 300,
          //     height: 300,
          //     fit: BoxFit.scaleDown,
          //     repeat: ImageRepeat.repeatY,
          //   ),
          // ),
          // Text(
          //   '\uE03e', 
          //   style: TextStyle(
          //     fontFamily: 'MaterialIcons',
          //     fontSize: 200,
          //     color: Colors.green,
          //   ),
          // ),
          // Icon(
          //   Icons.accessible, 
          //   size: 200, 
          //   color: Colors.green,
          // ),
          // Text(
          //   '前端大神勇者无敌', 
          //   style: TextStyle(
          //     fontFamily: 'DFDK',
          //     fontSize: 80,
          //   )
          // ),
          Text(
            '\ue6a8', 
            style: TextStyle(
              fontFamily: 'image_haven_font',
              fontSize: 80,
              color: Colors.red,
            )
          ),
          Text(
            '\ue66c', 
            style: TextStyle(
              fontFamily: 'image_haven_font',
              fontSize: 80,
              color: Colors.red,
            )
          ),
          Icon(MyIcon.lu, size: 80, color: Colors.red,),
        ],
      )
    );
  }
}

class MyIcon {
  static const IconData lu = IconData(0xe66c, fontFamily: 'image_haven_font', matchTextDirection: true);
}

// class ButtonDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(children: [
//           ElevatedButton(
//             child: Text('点赞'),
//             onPressed: () {
//               print('xxxxx');
//             }
//           ),
//           TextButton(
//             child: Text('点赞'),
//             onPressed: () {
//               print('xxxxx');
//             }
//           ),
//           OutlinedButton(
//             child: Text('点赞'),
//             onPressed: () {
//               print('xxxxx');
//             }
//           ),
//           IconButton(
//             icon: Icon(Icons.thumb_up),
//             onPressed: () {
//               print('xxxxx');
//             }
//           ),
//           ElevatedButton.icon(
//             icon: Icon(Icons.thumb_up),
//             label: Text('点赞'),
//             onPressed: () {
//               print('xxxxx');
//             }
//           ),
//           TextButton.icon(
//             icon: Icon(Icons.thumb_up),
//             label: Text('点赞'),
//             onPressed: () {
//               print('xxxxx');
//             }
//           ),
//           OutlinedButton.icon(
//             icon: Icon(Icons.thumb_up),
//             label: Text('点赞'),
//             onPressed: () {
//               print('xxxxx');
//             }
//           ),
//         ],)
//       );
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             TextButton(
//               child: Text('open new route'),
//               onPressed: () async {
//                 Navigator.pushNamed(context, 'new');
//                 // Navigator.push(context, MaterialPageRoute(builder: (context) => NewRoute()));
//                 // var result = await Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => TipRoute(text: 'xxxxx')));
//                 // print('路由返回值:$result');
//               },
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// class TipRoute extends StatelessWidget {
//   const TipRoute({Key? key, required this.text}) : super(key: key);

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('提示'),
//         ),
//         body: Padding(
//             padding: EdgeInsets.all(18),
//             child: Center(
//                 child: Column(children: [
//               Text(text),
//               ElevatedButton(
//                 onPressed: () => Navigator.pop(context, '我是返回值'),
//                 child: Text('返回'),
//               )
//             ]))));
//   }
// }

// class NewRoute extends StatelessWidget {
//   const NewRoute({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('New Route'),
//       ),
//       body: Center(
//         child: Text('This is new route'),
//       )
//     );
//   }
// }

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

// class TabBoxA extends StatefulWidget {
//   const TabBoxA({Key? key}) : super(key: key);

//   @override
//   _TabBoxAState createState() => _TabBoxAState();
// }

// class _TabBoxAState extends State {
//   bool _active = false;

//   void _handleTap() {
//     setState(() {
//       _active = !_active;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _handleTap,
//       child: Container(
//         width: 200,
//         height: 200,
//         decoration: BoxDecoration(
//           color: _active ? Colors.lightGreen[700] : Colors.grey[600],
//         ),
//         child: Center(
//           child: Text(
//             _active ? 'Active' : 'Inactive',
//             style: const TextStyle(fontSize: 32.0, color: Colors.white),
//           )
//         )
//       )
//     );
//   }
// }