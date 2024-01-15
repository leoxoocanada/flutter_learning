import 'package:flutter/material.dart';
// import './CounterDemo.dart';
// import './RouteDemo.dart';
// import './ButtonDemo.dart';
// import './ImageDemo.dart';
// import './FormDemo.dart';
// import './ProgressDemo.dart';
// import 'layout_demo.dart';
// import 'column_demo.dart';
// import 'flex_demo.dart';
// import 'flow_demo.dart';
// import 'stack_demo.dart';
// import 'align_demo.dart';
// import 'container_demo.dart';
// import 'sliver_demo.dart';
// import 'willpopscope_demo.dart';
// import 'inherited_widget_demo.dart';
// import 'provider_demo.dart';
// import 'builder_demo.dart';
import 'dialog_demo.dart';

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
      body: Padding(
        padding: EdgeInsets.all(20),
        // child: CounterDemo(),
        // child: ButtonDemo(),
        // child: ImageDemo(),
        // child: FormDemo(),
        // child: ProgressDemo(),
        // child: LayoutDemo(),
        // child: ColumnDemo(),
        // child: FlexDemo(),
        // child: FlowDemo(),
        // child: StackDemo(),
        // child: AlignDemo(),
        // child: ContainerDemo(),
        // child: SliverDemo(),
        // child: WillPopScopePage(),
        // child: InheritedWidgetTestRoute(),
        // child: ProviderRoute(),
        // child: BuilderDemo(),
        child: DialogDemo(),
      ),
    );
  }
}

