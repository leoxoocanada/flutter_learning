import 'package:flutter/material.dart';



Widget _buildMaterialDialogTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  // 使用缩放动画
  return ScaleTransition(
    scale: CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut,
    ),
    child: child,
  );
}

class DialogDemo extends StatelessWidget {
  const DialogDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // 弹出对话框
    // Future<bool?> showDeleteConfirmDialog1() {
    //   return showDialog<bool>(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         title: Text("提示"),
    //         content: Text("您确定要删除当前文件吗?"),
    //         actions: <Widget>[
    //           TextButton(
    //             child: Text("取消"),
    //             onPressed: () => Navigator.of(context).pop(), // 关闭对话框
    //           ),
    //           TextButton(
    //             child: Text("删除"),
    //             onPressed: () {
    //               //关闭对话框并返回true
    //               Navigator.of(context).pop(true);
    //             },
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // }
    
    // return ElevatedButton(
    //   child: Text("对话框1"),
    //   onPressed: () async {
    //     //弹出对话框并等待其关闭
    //     bool? delete = await showDeleteConfirmDialog1();
    //     if (delete == null) {
    //       print("取消删除");
    //     } else {
    //       print("已确认删除");
    //       //... 删除文件
    //     }
    //   },
    // );

    // Future<int?> changeLanguage() async {
    //   return showDialog<int>(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return SimpleDialog(
    //           title: const Text('请选择语言'),
    //           children: <Widget>[
    //             SimpleDialogOption(
    //               onPressed: () {
    //                 // 返回1
    //                 Navigator.pop(context, 1);
    //               },
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric(vertical: 6),
    //                 child: const Text('中文简体'),
    //               ),
    //             ),
    //             SimpleDialogOption(
    //               onPressed: () {
    //                 // 返回2
    //                 Navigator.pop(context, 2);
    //               },
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric(vertical: 6),
    //                 child: const Text('美国英语'),
    //               ),
    //             ),
    //           ],
    //         );
    //       });
    // }
    
    // return ElevatedButton(
    //   child: Text("对话框2"),
    //   onPressed: () async {
    //     int? i = await changeLanguage();
    //     if (i == 1) {
    //       print("中文简体");
    //     } else {
    //       print("美国英语");
    //     }
    //   },
    // );

    // Future<void> showListDialog() async {
    //   int? index = await showDialog<int>(
    //     context: context,
    //     builder: (BuildContext context) {
    //       var child = Column(
    //         children: <Widget>[
    //           ListTile(title: Text("请选择")),
    //           Expanded(
    //               child: ListView.builder(
    //             itemCount: 30,
    //             itemBuilder: (BuildContext context, int index) {
    //               return ListTile(
    //                 title: Text("$index"),
    //                 onTap: () => Navigator.of(context).pop(index),
    //               );
    //             },
    //           )),
    //         ],
    //       );
    //       //使用AlertDialog会报错
    //       //return AlertDialog(content: child);
    //       // return Dialog(child: child);
    //       return UnconstrainedBox(
    //         constrainedAxis: Axis.vertical,
    //         child: ConstrainedBox(
    //           constraints: BoxConstraints(maxWidth: 280),
    //           child: Material(
    //             child: child,
    //             type: MaterialType.card,
    //           ),
    //         ),
    //       );
    //     },
    //   );
    //   if (index != null) {
    //     print("点击了：$index");
    //   }
    // }
    
    // return ElevatedButton(
    //   child: Text("对话框3"),
    //   onPressed: () async {
    //     showListDialog();
    //   },
    // );


    Future<T?> showCustomDialog<T>({
      required BuildContext context,
      bool barrierDismissible = true,
      required WidgetBuilder builder,
      ThemeData? theme,
    }) {
      // final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
      final ThemeData theme = Theme.of(context);
      return showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext buildContext, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          final Widget pageChild = Builder(builder: builder);
          return SafeArea(
            child: Builder(builder: (BuildContext context) {
              return theme != null
                  ? Theme(data: theme, child: pageChild)
                  : pageChild;
            }),
          );
        },
        barrierDismissible: barrierDismissible,
        barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black87, // 自定义遮罩颜色
        transitionDuration: const Duration(milliseconds: 150),
        transitionBuilder: _buildMaterialDialogTransitions,
      );
    }


    return ElevatedButton(
      child: Text("对话框4"),
      onPressed: () async {
        showCustomDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("提示"),
              content: Text("您确定要删除当前文件吗?"),
              actions: <Widget>[
                TextButton(
                  child: Text("取消"),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                TextButton(
                  child: Text("删除"),
                  onPressed: () {
                    // 执行删除操作
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            );
          },
        );
      },
    );



  }
}
