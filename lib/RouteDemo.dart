import 'package:flutter/material.dart';


class RouteDemo extends StatelessWidget {
  const RouteDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: 'default',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        'default': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        'new': (context) => TipRoute(text: 'aaaaa',),
      },
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              child: const Text('open new route'),
              onPressed: () async {
                Navigator.pushNamed(context, 'new');
                // Navigator.push(context, MaterialPageRoute(builder: (context) => NewRoute()));
                // var result = await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => TipRoute(text: 'xxxxx')));
                // print('路由返回值:$result');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TipRoute extends StatelessWidget {
  const TipRoute({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('提示'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(18),
            child: Center(
                child: Column(children: [
              Text(text),
              ElevatedButton(
                onPressed: () => Navigator.pop(context, '我是返回值'),
                child: const Text('返回'),
              )
            ]))));
  }
}

class NewRoute extends StatelessWidget {
  const NewRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Route'),
      ),
      body: const Center(
        child: Text('This is new route'),
      )
    );
  }
}
