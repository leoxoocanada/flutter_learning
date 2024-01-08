import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            textDirection: TextDirection.rtl,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
          SizedBox(
            width: 500,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.green,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  left: 100,
                  top: 100,
                  child: Container(
                    width: 1000,
                    height: 1000,
                    color: Colors.red,
                  ),
                ),
                Positioned(
                  // left: 80,
                  // top: 80,
                  right: 80,
                  bottom: 10,
                  width: 200,
                  height: 50,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
