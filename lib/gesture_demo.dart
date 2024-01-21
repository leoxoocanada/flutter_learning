import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureDemo extends StatefulWidget {
  const GestureDemo({super.key});

  @override
  _State createState() => _State();
}

// class _State extends State<GestureDemo> {
//   String _operation = "No Gesture detected!"; //保存事件名
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         child: Container(
//           alignment: Alignment.center,
//           color: Colors.blue,
//           width: 200.0,
//           height: 100.0,
//           child: Text(
//             _operation,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         onTap: () => updateText("Tap"), //点击
//         onDoubleTap: () => updateText("DoubleTap"), //双击
//         onLongPress: () => updateText("LongPress"), //长按
//       ),
//     );
//   }

//   void updateText(String text) {
//     //更新显示的事件名
//     setState(() {
//       _operation = text;
//     });
//   }
// }

// class _State extends State<GestureDemo> with SingleTickerProviderStateMixin {
//   double _top = 0.0; //距顶部的偏移
//   double _left = 0.0;//距左边的偏移

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Positioned(
//           top: _top,
//           left: _left,
//           child: GestureDetector(
//             child: CircleAvatar(child: Text("A")),
//             //手指按下时会触发此回调
//             onPanDown: (DragDownDetails e) {
//               //打印手指按下的位置(相对于屏幕)
//               print("用户手指按下：${e.globalPosition}");
//             },
//             //手指滑动时会触发此回调
//             onPanUpdate: (DragUpdateDetails e) {
//               //用户手指滑动时，更新偏移，重新构建
//               setState(() {
//                 // _left += e.delta.dx;
//                 _top += e.delta.dy;
//               });
//             },
//             onPanEnd: (DragEndDetails e){
//               //打印滑动结束时在x、y轴上的速度
//               print(e.velocity);
//             },
//           ),
//         )
//       ],
//     );
//   }
// }

// class _State extends State<GestureDemo> {
//   double _width = 200.0; //通过修改图片宽度来达到缩放效果

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         //指定宽度，高度自适应
//         child: Image.asset('images/logo.png', width: _width),
//         // 模拟器里不生效
//         onScaleUpdate: (ScaleUpdateDetails details) {
//           setState(() {
//             //缩放倍数在0.8到10倍之间
//             _width = 200 * details.scale.clamp(.8, 10.0);
//           });
//         },
//       ),
//     );
//   }
// }


// class _State extends State<GestureDemo> {
//   TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
//   bool _toggle = false; //变色开关

//   @override
//   void dispose() {
//     //用到GestureRecognizer的话一定要调用其dispose方法释放资源
//     _tapGestureRecognizer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text.rich(
//         TextSpan(
//           children: [
//             TextSpan(text: "你好世界"),
//             TextSpan(
//               text: "点我变色",
//               style: TextStyle(
//                 fontSize: 30.0,
//                 color: _toggle ? Colors.blue : Colors.red,
//               ),
//               recognizer: _tapGestureRecognizer
//                 ..onTap = () {
//                   setState(() {
//                     _toggle = !_toggle;
//                   });
//                 },
//             ),
//             TextSpan(text: "你好世界"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _State extends State<GestureDemo> {
//   PointerEvent? _event;

//   @override
//   Widget build(BuildContext context) {
//     return Listener(
//       child: Container(
//         alignment: Alignment.center,
//         color: Colors.blue,
//         width: 300.0,
//         height: 150.0,
//         child: Text(
//           '${_event?.localPosition ?? ''}',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       onPointerDown: (PointerDownEvent event) => setState(() => _event = event),
//       onPointerMove: (PointerMoveEvent event) => setState(() => _event = event),
//       onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
//     );
//   }
// }

class _State extends State<GestureDemo> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerDownEvent event) {
        print("Tap1");
      },
      child: Container(
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              left: 100,
              top: 100,
              child: GestureDetector(
                onTap: () {
                  print("Tap2");
                },
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              )
            ),
            Positioned(
              left: 150,
              top: 150,
              child: GestureDetector(
                onTap: () {
                  print("Tap3");
                },
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              )
            ),
          ]
        ),
      )
    );
  }
}