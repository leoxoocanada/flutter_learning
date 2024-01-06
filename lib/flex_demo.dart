import 'package:flutter/material.dart';

class FlexDemo extends StatelessWidget {
  const FlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // child: Flex(
      //   direction: Axis.horizontal,
      //   children: [
      //     Container(
      //       color: Colors.blue,
      //       width: 50,
      //       height: 30,
      //     ),
      //     Container(
      //       color: Colors.green,
      //       width: 50,
      //       height: 50,
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         height: 30.0,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     const Spacer(
      //       flex: 2,
      //     ),
      //     Container(
      //       color: Colors.pink,
      //       width: 50,
      //       height: 80,
      //     ),
      //   ],
      // ),
      child: SizedBox(
        height: 600,
        child: Flex(
          direction: Axis.vertical,
          children: [
            Container(
              color: Colors.blue,
              width: 50,
              height: 30,
            ),
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 30.0,
                color: Colors.yellow,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              color: Colors.pink,
              width: 50,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
