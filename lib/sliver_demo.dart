import 'dart:async';
import 'package:flutter/material.dart';

/** ScrollNotificationTestRoute */
// class ScrollNotificationTestRoute extends StatefulWidget {
//   @override
//   _ScrollNotificationTestRouteState createState() =>
//       _ScrollNotificationTestRouteState();
// }

// class _ScrollNotificationTestRouteState
//     extends State<ScrollNotificationTestRoute> {
//   String _progress = "0%"; //保存进度百分比
//   @override
//   Widget build(BuildContext context) {
//     return Scrollbar(
//       //进度条
//       // 监听滚动通知
//       child: NotificationListener<ScrollNotification>(
//         onNotification: (ScrollNotification notification) {
//           double progress = notification.metrics.pixels /
//               notification.metrics.maxScrollExtent;
//           //重新构建
//           setState(() {
//             _progress = "${(progress * 100).toInt()}%";
//           });
//           print("BottomEdge: ${notification.metrics.extentAfter == 0}");
//           return false;
//           //return true; //放开此行注释后，进度条将失效
//         },
//         child: Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             ListView.builder(
//               itemCount: 100,
//               itemExtent: 50.0,
//               itemBuilder: (context, index) => ListTile(title: Text("$index")),
//             ),
//             CircleAvatar(
//               //显示进度百分比
//               radius: 30.0,
//               child: Text(_progress),
//               backgroundColor: Colors.black54,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

/** AnimatedListRoute */
// class AnimatedListRoute extends StatefulWidget {
//   const AnimatedListRoute({Key? key}) : super(key: key);
//   @override
//   _AnimatedListRouteState createState() => _AnimatedListRouteState();
// }

// class _AnimatedListRouteState extends State<AnimatedListRoute> {
//   var data = <String>[];
//   int counter = 5;
//   final globalKey = GlobalKey<AnimatedListState>();
//   @override
//   void initState() {
//     for (var i = 0; i < counter; i++) {
//       data.add('${i + 1}');
//     }
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         AnimatedList(
//           key: globalKey,
//           initialItemCount: data.length,
//           itemBuilder: (
//             BuildContext context,
//             int index,
//             Animation<double> animation,
//           ) {
//             //添加列表项时会执行渐显动画
//             return FadeTransition(
//               opacity: animation,
//               child: buildItem(context, index),
//             );
//           },
//         ),
//         buildAddBtn(),
//       ],
//     );
//   }
//   // 创建一个 “+” 按钮，点击后会向列表中插入一项
//   Widget buildAddBtn() {
//     return Positioned(
//       child: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           // 添加一个列表项
//           data.add('${++counter}');
//           // 告诉列表项有新添加的列表项
//           globalKey.currentState!.insertItem(data.length - 1);
//           print('添加 $counter');
//         },
//       ),
//       bottom: 30,
//       left: 0,
//       right: 0,
//     );
//   }
//   // 构建列表项
//   Widget buildItem(context, index) {
//     String char = data[index];
//     return ListTile(
//       //数字不会重复，所以作为Key
//       key: ValueKey(char),
//       title: Text(char),
//       trailing: IconButton(
//         icon: Icon(Icons.delete),
//         // 点击时删除
//         onPressed: () => onDelete(context, index),
//       ),
//     );
//   }
//   void onDelete(context, index) {
//     setState(() {
//       globalKey.currentState!.removeItem(
//         index,
//         (context, animation) {
//           // 删除过程执行的是反向动画，animation.value 会从1变为0
//           var item = buildItem(context, index);
//           print('删除 ${data[index]}');
//           data.removeAt(index);
//           // 删除动画是一个合成动画：渐隐 + 收缩列表项
//           return FadeTransition(
//             opacity: CurvedAnimation(
//               parent: animation,
//               //让透明度变化的更快一些
//               curve: const Interval(0.5, 1.0),
//             ),
//             // 不断缩小列表项的高度
//             child: SizeTransition(
//               sizeFactor: animation,
//               axisAlignment: 0.0,
//               child: item,
//             ),
//           );
//         },
//         duration: Duration(milliseconds: 200), // 动画时间为 200 ms
//       );
//     });
//   }
// }

/** InfiniteGridView */
// class InfiniteGridView extends StatefulWidget {
//   @override
//   _InfiniteGridViewState createState() => _InfiniteGridViewState();
// }

// class _InfiniteGridViewState extends State<InfiniteGridView> {
//   List<IconData> _icons = []; //保存Icon数据
//   @override
//   void initState() {
//     super.initState();
//     // 初始化数据
//     _retrieveIcons();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3, //每行三列
//         childAspectRatio: 1.0, //显示区域宽高相等
//       ),
//       itemCount: _icons.length,
//       itemBuilder: (context, index) {
//         //如果显示到最后一个并且Icon总数小于200时继续获取数据
//         if (index == _icons.length - 1 && _icons.length < 200) {
//           _retrieveIcons();
//         }
//         return Icon(_icons[index]);
//       },
//     );
//   }
//   //模拟异步获取数据
//   void _retrieveIcons() {
//     Future.delayed(Duration(milliseconds: 200)).then((e) {
//       setState(() {
//         _icons.addAll([
//           Icons.ac_unit,
//           Icons.airport_shuttle,
//           Icons.all_inclusive,
//           Icons.beach_access,
//           Icons.cake,
//           Icons.free_breakfast,
//         ]);
//       });
//     });
//   }
// }

/** Tab 页面  */
// class Page extends StatefulWidget {
//   const Page({
//     Key? key,
//     required this.text
//   }) : super(key: key);
//   final String text;
//   @override
//   _PageState createState() => _PageState();
// }

// class _PageState extends State<Page> with AutomaticKeepAliveClientMixin {
//   @override
//   Widget build(BuildContext context) {
//     super.build(context); // 必须调用
//     return Center(child: Text("${widget.text}", textScaleFactor: 5));
//   }
//   @override
//   bool get wantKeepAlive => true; // 是否需要缓存
// }

// class PageViewDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var children = <Widget>[];
//     // 生成 6 个 Tab 页
//     for (int i = 0; i < 6; ++i) {
//       children.add( Page( text: '$i'));
//     }
//     return PageView(
//       // scrollDirection: Axis.vertical, // 滑动方向为垂直方向
//       children: children,
//     );
//   }
// }


/** TabViewRoute1 */
// class TabViewRoute1 extends StatefulWidget {
//   @override
//   _TabViewRoute1State createState() => _TabViewRoute1State();
// }

// class _TabViewRoute1State extends State<TabViewRoute1>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   List tabs = ["新闻", "历史", "图片"];

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: tabs.length, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("App Name"),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: tabs.map((e) => Tab(text: e)).toList(),
//         ),
//       ),
//       body: TabBarView( //构建
//         controller: _tabController,
//         children: tabs.map((e) {
//           return Container(
//               alignment: Alignment.center,
//               child: Text(e, textScaleFactor: 5),
//             );
//         }).toList(),
//       ),
//     );
//   }
  
//   @override
//   void dispose() {
//     // 释放资源
//     _tabController.dispose();
//     super.dispose();
//   }
// }

/** TabViewRoute2 */
// class TabViewRoute2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List tabs = ["新闻", "历史", "图片"];
//     return DefaultTabController(
//       length: tabs.length,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("App Name"),
//           bottom: TabBar(
//             tabs: tabs.map((e) => Tab(text: e)).toList(),
//           ),
//         ),
//         body: TabBarView( //构建
//           children: tabs.map((e) {
//             return Container(
//                 alignment: Alignment.center,
//                 child: Text(e, textScaleFactor: 5),
//               );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }

/** buildTwoSliverList */
// Widget buildTwoSliverList() {
//   // SliverFixedExtentList 是一个 Sliver，它可以生成高度相同的列表项。
//   // 再次提醒，如果列表项高度相同，我们应该优先使用SliverFixedExtentList 
//   // 和 SliverPrototypeExtentList，如果不同，使用 SliverList.
//   var listView = SliverFixedExtentList(
//     itemExtent: 56, //列表项高度固定
//     delegate: SliverChildBuilderDelegate(
//       (_, index) => ListTile(title: Text('$index')),
//       childCount: 10,
//     ),
//   );
//   // 使用
//   return CustomScrollView(
//     slivers: [
//       listView,
//       listView,
//     ],
//   );
// }

/** SnapAppBar */
// class SnapAppBar extends StatelessWidget {
//   const SnapAppBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NestedScrollView(
//         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//           return <Widget>[
//             SliverOverlapAbsorber(
//               handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
//               sliver: SliverAppBar(
//                 floating: true,
//                 snap: true,
//                 expandedHeight: 200,
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: Image.asset(
//                     "./imgs/sea.png",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 forceElevated: innerBoxIsScrolled,
//               ),
//             ),
//           ];
//         },
//         body: Builder(builder: (BuildContext context) {
//           return CustomScrollView(
//             slivers: <Widget>[
//               SliverOverlapInjector(
//                 handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
//               ),
//               buildSliverList(100)
//             ],
//           );
//         }),
//       ),
//     );
//   }
// }

// 构建固定高度的SliverList，count为列表项属相
Widget buildSliverList([int count = 5]) {
  return SliverFixedExtentList(
    itemExtent: 50,
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        return ListTile(title: Text('$index'));
      },
      childCount: count,
    ),
  );
}

class NestedTabBarView1 extends StatelessWidget {
  const NestedTabBarView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tabs = <String>['猜你喜欢', '今日特价', '发现更多'];
    // 构建 tabBar
    return DefaultTabController(
      length: _tabs.length, // tab的数量.
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  title: const Text('商城'),
                  floating: true,
                  snap: true,
                  forceElevated: innerBoxIsScrolled,
                  bottom: TabBar(
                    tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: _tabs.map((String name) {
              return Builder(
                builder: (BuildContext context) {
                  return CustomScrollView(
                    key: PageStorageKey<String>(name),
                    slivers: <Widget>[
                      SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.all(8.0),
                        sliver: buildSliverList(50),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

/** SliverDemo */
class SliverDemo extends StatelessWidget {
  ScrollController _controller = ScrollController();

  SliverDemo({super.key}) {
    // //监听滚动事件，打印滚动位置
    // _controller.addListener(() {
    //   print(_controller.offset); //打印滚动位置
    // });

    // Timer(
    //   Duration(seconds: 3),
    //   () => _controller.animateTo(
    //     10000,
    //     duration: Duration(seconds: 10),
    //     curve: Curves.easeIn,
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    // const String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    // return SingleChildScrollView(
    //   child: Column(
    //     children: str
    //         .split('')
    //         .map(
    //           (String e) => Container(
    //             width: double.infinity,
    //             child: Text(
    //               e,
    //               textScaleFactor: 2,
    //             ),
    //           ),
    //         )
    //         .toList(),
    //   ),
    // );

    // return ListView(
    //   shrinkWrap: true,
    //   padding: const EdgeInsets.all(20.0),
    //   children: <Widget>[
    //     const Text('I\'m dedicating every day to you'),
    //     const Text('Domestic life was never quite my style'),
    //     const Text('When you smile, you knock me out, I fall apart'),
    //     const Text('And I thought I was so smart'),
    //   ],
    // );

    // return ListView.builder(
    //   itemCount: 100,
    //   itemExtent: 50.0, //强制高度为50.0
    //   itemBuilder: (BuildContext context, int index) {
    //     return ListTile(title: Text("$index"));
    //   },
    // );

    // //下划线widget预定义以供复用。
    // Widget divider1=Divider(color: Colors.blue,);
    // Widget divider2=Divider(color: Colors.green);
    // return ListView.separated(
    //   itemCount: 100,
    //   //列表项构造器
    //   itemBuilder: (BuildContext context, int index) {
    //     return ListTile(title: Text("$index"));
    //   },
    //   //分割器构造器
    //   separatorBuilder: (BuildContext context, int index) {
    //     return index%2==0?divider1:divider2;
    //   },
    // );

    // return ListView.builder(
    // 	prototypeItem: ListTile(title: Text("1")),
    //   //itemExtent: 56,
    //   itemBuilder: (context, index) {
    //     return ListTile(title: Text("$index"));
    //   },
    // );

    // return Column(children: <Widget>[
    //   ListTile(title:Text("商品列表")),
    //   SizedBox(
    //     height: MediaQuery.of(context).size.height-240,
    //     child: ListView.builder(
    //       itemBuilder: (BuildContext context, int index) {
    //         return ListTile(title: Text("$index"));
    //       },
    //     ),
    //   ),
    // ]);

    // return Column(children: <Widget>[
    //   ListTile(title: Text("商品列表")),
    //   Expanded(
    //     child: ListView.builder(
    //       controller: _controller,
    //       itemBuilder: (BuildContext context, int index) {
    //         return ListTile(title: Text("$index"));
    //       },
    //     ),
    //   ),
    // ]);

    // return GridView(
    //   // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //   //   crossAxisCount: 3, //横轴三个子widget
    //   //   childAspectRatio: 1.0 //宽高比为1时，子widget
    //   // ),
    //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //     maxCrossAxisExtent: 60.0,
    //     childAspectRatio: 2.0 //宽高比为2
    //   ),
    //   children: <Widget>[
    //     Icon(Icons.ac_unit),
    //     Icon(Icons.airport_shuttle),
    //     Icon(Icons.all_inclusive),
    //     Icon(Icons.beach_access),
    //     Icon(Icons.cake),
    //     Icon(Icons.free_breakfast)
    //   ],
    // );

    // return GridView.count( 
    //   crossAxisCount: 3,
    //   childAspectRatio: 1.0,
    //   children: <Widget>[
    //     Icon(Icons.ac_unit),
    //     Icon(Icons.airport_shuttle),
    //     Icon(Icons.all_inclusive),
    //     Icon(Icons.beach_access),
    //     Icon(Icons.cake),
    //     Icon(Icons.free_breakfast),
    //   ],
    // );

    // return GridView.extent(
    //   maxCrossAxisExtent: 60.0,
    //   childAspectRatio: 2.0,
    //   children: <Widget>[
    //     Icon(Icons.ac_unit),
    //     Icon(Icons.airport_shuttle),
    //     Icon(Icons.all_inclusive),
    //     Icon(Icons.beach_access),
    //     Icon(Icons.cake),
    //     Icon(Icons.free_breakfast),
    //   ],
    // );


    // return Material(
    //   child: CustomScrollView(
    //     slivers: <Widget>[
    //       // AppBar，包含一个导航栏.
    //       SliverAppBar(
    //         pinned: true, // 滑动到顶端时会固定住
    //         expandedHeight: 250.0,
    //         flexibleSpace: FlexibleSpaceBar(
    //           title: const Text('Demo', style: TextStyle(color: Colors.red)),
    //           background: Image.asset(
    //             "../images/logo.png",
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //       ),
    //       SliverPadding(
    //         padding: const EdgeInsets.all(8.0),
    //         sliver: SliverGrid(
    //           //Grid
    //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             crossAxisCount: 2, //Grid按两列显示
    //             mainAxisSpacing: 10.0,
    //             crossAxisSpacing: 10.0,
    //             childAspectRatio: 4.0,
    //           ),
    //           delegate: SliverChildBuilderDelegate(
    //             (BuildContext context, int index) {
    //               //创建子widget
    //               return Container(
    //                 alignment: Alignment.center,
    //                 color: Colors.cyan[100 * (index % 9)],
    //                 child: Text('grid item $index'),
    //               );
    //             },
    //             childCount: 20,
    //           ),
    //         ),
    //       ),
    //       SliverFixedExtentList(
    //         itemExtent: 50.0,
    //         delegate: SliverChildBuilderDelegate(
    //           (BuildContext context, int index) {
    //             //创建列表项
    //             return Container(
    //               alignment: Alignment.center,
    //               color: Colors.lightBlue[100 * (index % 9)],
    //               child: Text('list item $index'),
    //             );
    //           },
    //           childCount: 20,
    //         ),
    //       ),
    //       SliverToBoxAdapter(
    //         child: SizedBox(
    //           height: 300,
    //           child: PageView(
    //             children: [Text("1"), Text("2")],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // return Material(
    //   child: NestedScrollView(
    //     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    //       // 返回一个 Sliver 数组给外部可滚动组件。
    //       return <Widget>[
    //         SliverAppBar(
    //           pinned: true, // 滑动到顶端时会固定住
    //           expandedHeight: 250.0,
    //           flexibleSpace: FlexibleSpaceBar(
    //             title: const Text('Demo', style: TextStyle(color: Colors.red)),
    //             background: Image.asset(
    //               "../images/logo.png",
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //         ),
    //         SliverAppBar(
    //           title: const Text('嵌套ListView'),
    //           pinned: true, // 固定在顶部
    //           forceElevated: innerBoxIsScrolled,
    //         ),
    //       ];
    //     },
    //     body: ListView.builder(
    //       padding: const EdgeInsets.all(8),
    //       physics: const ClampingScrollPhysics(), //重要
    //       itemCount: 30,
    //       itemBuilder: (BuildContext context, int index) {
    //         return SizedBox(
    //           height: 50,
    //           child: Center(child: Text('Item $index')),
    //         );
    //       },
    //     ),
    //   ),
    // );

    // return ScrollNotificationTestRoute();
    // return AnimatedListRoute();
    // return InfiniteGridView();
    // return PageViewDemo();
    // return TabViewRoute1();
    // return TabViewRoute2();
    // return buildTwoSliverList();
    // return SnapAppBar();
    return NestedTabBarView1();
  }
}
