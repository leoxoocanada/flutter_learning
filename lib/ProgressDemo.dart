import 'package:flutter/material.dart';

class ProgressDemo extends StatefulWidget {
  const ProgressDemo({super.key});

  @override
  State<ProgressDemo> createState() => _ProgressDemoState();
}

class _ProgressDemoState extends State<ProgressDemo> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> colorAnimation;
  

  @override
  void initState() {
    super.initState();
    //动画执行时间3秒  
    controller = AnimationController(
        vsync: this, //注意State类需要混入SingleTickerProviderStateMixin（提供动画帧计时/触发器）
        duration: Duration(seconds: 5),
      );
    controller.forward();
    controller.addListener(() => setState(() => {}));
    colorAnimation = ColorTween(begin: Colors.grey, end: Colors.purple,).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        LinearProgressIndicator(
        ),
        Divider(height: 20),
        LinearProgressIndicator(
          backgroundColor: Colors.green,
          valueColor: AlwaysStoppedAnimation(Colors.blue),
          value: .5,
        ),
        Divider(height: 20),
        LinearProgressIndicator(
          backgroundColor: Colors.green,
          valueColor: colorAnimation,
          value: .5,
        ),
        CircularProgressIndicator(
          backgroundColor: Colors.green,
          valueColor: AlwaysStoppedAnimation(Colors.blue),
          value: .5,
          strokeWidth: 20,
        ),
        CircularProgressIndicator(
          backgroundColor: Colors.green,
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            backgroundColor: Colors.green,
          )
        ),
        SizedBox(
          height: 100,
          width: 400,
          child: CircularProgressIndicator(
            backgroundColor: Colors.green,
          )
        ),
      ]),
    );
  }
}