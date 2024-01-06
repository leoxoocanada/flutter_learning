import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // ConstrainedBox(
          //   constraints: const BoxConstraints(
          //     minWidth: double.infinity,
          //     minHeight: 50,
          //   ),
          //   child: Container(
          //     height: 5,
          //     color: Colors.red,
          //   ),
          // ),
          // const Divider(),
          // SizedBox(
          //     width: 300,
          //     height: 50,
          //     child: Container(
          //       height: 5,
          //       color: Colors.blue,
          //     )),
          // const Divider(),
          // AspectRatio(
          //   aspectRatio: 20 / 1,
          //   child: Container(
          //     height: 5,
          //     color: Colors.yellow,
          //   ),
          // ),
          // const Divider(),
          // LimitedBox(
          //   maxHeight: 50,
          //   child: Container(
          //     height: 500,
          //     color: Colors.green,
          //   ),
          // ),
          // const Divider(),
          // FractionallySizedBox(
          //   widthFactor: 0.5,
          //   child: Container(
          //     height: 5,
          //     color: Colors.orange,
          //   ),
          // ),
          // const Divider(),
          Row(
            children: [
              Container(
                width: 100,
                height: 50,
                color: Colors.green,
                child: const Text('1'),
              ),
              Container(
                width: 100,
                height: 20,
                color: Colors.green,
                child: const Text('2'),
              ),
            ],
          ),
          const Divider(),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Container(
                width: 100,
                height: 50,
                color: Colors.green,
                child: const Text('1'),
              ),
              Container(
                width: 100,
                height: 20,
                color: Colors.green,
                child: const Text('2'),
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: 50,
                color: Colors.green,
                child: const Text('1'),
              ),
              Container(
                width: 100,
                height: 20,
                color: Colors.green,
                child: const Text('2'),
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                height: 50,
                color: Colors.green,
                child: const Text('1'),
              ),
              Container(
                width: 100,
                height: 20,
                color: Colors.green,
                child: const Text('2'),
              ),
            ],
          ),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            verticalDirection: VerticalDirection.up,
            children: [
              Container(
                width: 100,
                height: 50,
                color: Colors.green,
                child: const Text('1'),
              ),
              Container(
                width: 100,
                height: 20,
                color: Colors.green,
                child: const Text('2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
