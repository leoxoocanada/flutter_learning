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

        // Transform.translate(
        //   offset: Offset(100, 100),
        //   child: Container(
        //     color: Colors.green,
        //     width: 300,
        //     height: 30,
        //   ),
        // ),
        // Transform.scale(
        //   scale: 2,
        //   child: const Text('wwwwwwwwwwwwww'),
        // ),

        // Row(
        //   children: [
        //     DecoratedBox(
        //       decoration: const BoxDecoration(
        //         color: Colors.blue,
        //       ),
        //       child: Transform.rotate(
        //         angle: pi / 2,
        //         child: const Text('xxxxxxxxxxxxxx'),
        //       ),
        //     ),
        //     const DecoratedBox(
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //       ),
        //       child: RotatedBox(
        //         quarterTurns: 1,
        //         child: Text('uuuuuuuuuuuuuuu'),
        //       ),
        //     ),
        //   ],
        // ),

        // ClipOval(
        //     child: Container(
        //   width: 50,
        //   height: 50,
        //   color: Colors.green,
        // )),
        // ClipOval(
        //     child: Container(
        //   width: 200,
        //   height: 50,
        //   color: Colors.green,
        // )),
        // ClipRRect(
        //     borderRadius: BorderRadius.circular(10),
        //     child: Container(
        //       width: 400,
        //       height: 50,
        //       color: Colors.green,
        //     )),
        // ClipRect(
        //   // clipBehavior: Clip.none,
        //   child: Container(
        //     width: 400,
        //     height: 50,
        //     color: Colors.blue,
        //     child: Transform.rotate(
        //       angle: pi / 20,
        //       child: const Text(
        //         'xxxxxx',
        //         style: TextStyle(color: Colors.red, fontSize: 50),
        //       ),
        //     ),
        //   ),
        // ),

        // Container(
        //   decoration: BoxDecoration(
        //     color: Colors.green,
        //   ),
        //   width: 200,
        //   height: 200,
        //   child: ClipRect(
        //     clipper: MyClipper(),
        //     child: Container(
        //       decoration: BoxDecoration(
        //         image: const DecorationImage(
        //           image: NetworkImage(
        //             'https://gw.alicdn.com/bao/uploaded/i1/796560056/O1CN01AMAhNI1CHgjPHbBaP_!!0-item_pic.jpg_300x300q90.jpg',
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        // Container(
        //   decoration: BoxDecoration(
        //     color: Colors.brown,
        //   ),
        //   width: 200,
        //   height: 200,
        //   child: ClipPath(
        //     clipper: __MyPathClipper(),
        //     child: Container(
        //       decoration: BoxDecoration(
        //         image: const DecorationImage(
        //           image: NetworkImage(
        //             'https://gw.alicdn.com/bao/uploaded/i1/796560056/O1CN01AMAhNI1CHgjPHbBaP_!!0-item_pic.jpg_300x300q90.jpg',
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Row(children: [Text('xx' * 60)]), //文本长度超出 Row 的最大宽度会溢出
        ),

        Container(
          width: 50,
          height: 50,
          color: Colors.red,
          child: FittedBox(
            // 子容器超过父容器大小
            child: Container(width: 60, height: 70, color: Colors.blue),
          ),
        ),
        Divider(),
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
          child: FittedBox(
            fit: BoxFit.none,
            // 子容器超过父容器大小
            child: Container(width: 60, height: 70, color: Colors.blue),
          ),
        ),
        Divider(),
        ClipRect(
          child: Container(
            width: 50,
            height: 50,
            color: Colors.red,
            child: FittedBox(
              fit: BoxFit.none,
              // 子容器超过父容器大小
              child: Container(width: 60, height: 70, color: Colors.blue),
            ),
          ),
        ),

        Center(
          child: Column(
            children: [
              wRow(' 900000000000000009999999 '),
              FittedBox(child: wRow(' 9000000000000000099999999999 ')),
              wRow(' 800 '),
              FittedBox(child: wRow(' 800 ')),
            ]
                .map((e) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: e,
                    ))
                .toList(),
          ),
        ),

        
      ],
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(10.0, 15.0, 100.0, 100.0);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

class __MyPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget wRow(String text) {
  Widget child = Text(text);
  child = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [child, child, child],
  );
  return child;
}
