import 'dart:async';

import 'package:flutter/material.dart';


class WillPopScopePage extends StatefulWidget {
  final String title = 'test';
  const WillPopScopePage({Key? key}) : super(key: key);

  @override
  _WillPopScopePageState createState() => _WillPopScopePageState();
}

class _WillPopScopePageState extends State<WillPopScopePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WillPopScopeTestRoute();
                },
              ),
            );
          },
          child: Text('tototo')
        )
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text('Home'),
      ),
    );
  }
}



class WillPopScopeTestRoute extends StatefulWidget {
  @override
  WillPopScopeTestRouteState createState() {
    return WillPopScopeTestRouteState();
  }
}

class WillPopScopeTestRouteState extends State<WillPopScopeTestRoute> {
  DateTime? _lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('1111');
        if (_lastPressedAt == null ||
            DateTime.now().difference(_lastPressedAt!) > Duration(seconds: 1)) {
          //两次点击间隔超过1秒则重新计时
          _lastPressedAt = DateTime.now();
          return false;
        }
        return true;
      },
      child: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text("1秒内连续按两次返回键退出"),
        ),
      ),
    );
  }
}
