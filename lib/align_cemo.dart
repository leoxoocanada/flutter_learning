import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget {
  const AlignDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 160,
            height: 160,
            color: Colors.green.shade100,
            child: Align(
              alignment: Alignment.bottomRight,
              child: FlutterLogo(size: 80),
            ),
          ),
          Container(child: Text('-----')),
          Container(
            color: Colors.green.shade100,
            child: Align(
              alignment: Alignment.bottomRight,
              widthFactor: 2,
              heightFactor: 2,
              child: FlutterLogo(size: 80),
            ),
          ),
          Container(child: Text('-----')),
          Container(
            color: Colors.green.shade100,
            child: Align(
              alignment: Alignment(2, 0),
              widthFactor: 2,
              heightFactor: 2,
              child: FlutterLogo(size: 80),
            ),
          ),
          Container(child: Text('-----')),
          Container(
            color: Colors.green.shade100,
            child: Align(
              alignment: FractionalOffset(1.1, 0),
              child: FlutterLogo(size: 80),
            ),
          ),
          Container(child: Text('-----')),
          Container(
            width: 300,
            height: 300,
            color: Colors.green.shade100,
            child: Center(
              // widthFactor: 1,
              child: FlutterLogo(size: 80),
            ),
          ),
          Container(child: Text('-----')),
          Container(
            width: 300,
            height: 300,
            color: Colors.green.shade100,
            child: FlutterLogo(size: 80),
          ),
        ],
      ),
    );
  }
}
