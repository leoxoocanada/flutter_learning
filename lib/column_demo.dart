import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // verticalDirection: VerticalDirection.up,
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        // textBaseline: TextBaseline.alphabetic,

        // textDirection: TextDirection.rtl,
        // crossAxisAlignment: CrossAxisAlignment.end,
        
        children: [
          Container(
            width: 50,
            height: 30,
            color: Colors.blue,
            child: const Text('1'),
          ),
          Container(
            width: 20,
            height: 30,
            color: Colors.blue,
            child: const Text('2'),
          ),
        ],
      ),
    );
  }
}
