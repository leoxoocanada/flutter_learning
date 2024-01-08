import 'dart:math';

import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding: EdgeInsets.all(20),
        //   child: Text('xxxxx'),
        // ),
        // Padding(
        //   padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        //   child: Text('xxxxx'),
        // ),
        // Padding(
        //   padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
        //   child: Text('xxxxx'),
        // ),
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        //   child: Text('xxxxx'),
        // ),

        // DecoratedBox(
        //   decoration: BoxDecoration(
        //     color: Colors.green,
        //     border: Border.all(
        //       color: Colors.red,
        //       width: 2,
        //     ),
        //   ),
        //   child: const Text('xxxxx'),
        // ),
        // DecoratedBox(
        //   decoration: BoxDecoration(
        //     color: Colors.green,
        //     border: Border.all(
        //       color: Colors.red,
        //       width: 2,
        //     ),
        //   ),
        //   position: DecorationPosition.foreground,
        //   child: const Text('xxxxx'),
        // ),
        // DecoratedBox(
        //   decoration: BoxDecoration(
        //     image: const DecorationImage(
        //       image: NetworkImage(
        //         'https://gw.alicdn.com/bao/uploaded/i1/796560056/O1CN01AMAhNI1CHgjPHbBaP_!!0-item_pic.jpg_300x300q90.jpg',
        //       ),
        //     ),
        //     border: Border.all(
        //       color: Colors.red,
        //       width: 2,
        //     ),
        //     borderRadius: BorderRadius.circular(20),
        //     boxShadow: const [
        //       BoxShadow(
        //         color: Colors.yellow,
        //         offset: Offset(10, 10),
        //       ),
        //       BoxShadow(
        //         color: Colors.blue,
        //         offset: Offset(-10, -10),
        //       )
        //     ],
        //   ),
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     child: const Text('xxxxx'),
        //   )
        // ),
        // DecoratedBox(
        //   decoration: const BoxDecoration(
        //     color: Colors.yellow,
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [
        //         Colors.red,
        //         Colors.blue,
        //       ]
        //     ),
        //     backgroundBlendMode: BlendMode.hardLight,
        //     shape: BoxShape.circle
        //   ),
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     child: const Text('xxxxx'),
        //   )
        // ),

        // Stack(
        //   children: [
        //     Container(
        //       color: Colors.green,
        //       width: 300,
        //       height: 30,
        //     ),
        //     Transform(
        //       alignment: Alignment.topRight,
        //       transform: Matrix4.skewY(-0.3),
        //       child: Container(
        //         width: 300,
        //         height: 30,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Transform(
        //       alignment: Alignment.bottomLeft,
        //       transform: Matrix4.translationValues(0, 95, 0),
        //       child: Container(
        //         width: 300,
        //         height: 30,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //   ],
        // ),

        Transform.translate(
          offset: Offset(100, 100),
          child: Container(
            color: Colors.green,
            width: 300,
            height: 30,
          ),
        ),
        Transform.scale(
          scale: 2,
          child: const Text('wwwwwwwwwwwwww'),
        ),

        Row(
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Transform.rotate(
                angle: pi / 2,
                child: const Text('xxxxxxxxxxxxxx'),
              ),
            ),
            const DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: RotatedBox(
                quarterTurns: 1,
                child: Text('uuuuuuuuuuuuuuu'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
