import 'package:flutter/material.dart';

class BuilderDemo extends StatelessWidget {
  const BuilderDemo({super.key});

  // Future<String> mockNetworkData() async {
  //   return Future.delayed(Duration(seconds: 20), () => "我是从互联网上获取的数据");
  //   // return Future.error("error");
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: FutureBuilder<String>(
  //       future: mockNetworkData(),
  //       builder: (BuildContext context, AsyncSnapshot snapshot) {
  //         // 请求已结束
  //         if (snapshot.connectionState == ConnectionState.done) {
  //           if (snapshot.hasError) {
  //             // 请求失败，显示错误
  //             return Text("Error: ${snapshot.error}");
  //           } else {
  //             // 请求成功，显示数据
  //             return Text("Contents: ${snapshot.data}");
  //           }
  //         } else {
  //           // 请求未结束，显示loading
  //           return CircularProgressIndicator();
  //         }
  //       },
  //     ),
  //   );
  // }

  Stream<int> counter() {
    return Stream.periodic(Duration(seconds: 1), (i) {
      return i;
    });
  }

  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: counter(), //
      //initialData: ,// a Stream<int> or null
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        if (snapshot.hasError) return Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('没有Stream');
          case ConnectionState.waiting:
            return Text('等待数据...');
          case ConnectionState.active:
            return Text('active: ${snapshot.data}');
          case ConnectionState.done:
            return Text('Stream 已关闭');
        }
      },
    );
  }
}
