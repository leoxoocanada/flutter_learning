import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  String name = '';
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusScopeNode? _scopeNode;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      print('controller text222: ${_nameController.text}');
      setState(() {
        name = _nameController.text;
      });
    });
    _focusNode1.addListener(() {
      print('focus1: ${_focusNode1.hasFocus}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        // Switch(
        //   value: true,//当前状态
        //   onChanged:(value){
        //   },
        // ),
        // Checkbox(
        //   value: null,
        //   tristate: true,
        //   activeColor: Colors.red,
        //   onChanged: (value){

        //   }
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'text',
        //   ),
        //   keyboardType: TextInputType.text,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'datetime',
        //   ),
        //   keyboardType: TextInputType.datetime,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'emailAddress',
        //   ),
        //   keyboardType: TextInputType.emailAddress,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'multiline',
        //   ),
        //   keyboardType: TextInputType.multiline,
        //   maxLines: 2,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'name',
        //   ),
        //   keyboardType: TextInputType.name,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'none',
        //   ),
        //   keyboardType: TextInputType.none,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'number',
        //   ),
        //   keyboardType: TextInputType.number,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'phone',
        //   ),
        //   keyboardType: TextInputType.phone,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'streetAddress',
        //   ),
        //   keyboardType: TextInputType.streetAddress,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'url',
        //   ),
        //   keyboardType: TextInputType.url,
        // ),
        // const TextField(
        //   decoration: InputDecoration(
        //     labelText: 'visiblePassword',
        //   ),
        //   keyboardType: TextInputType.visiblePassword,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.done',
        //   ),
        //   textInputAction: TextInputAction.done,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.continueAction',
        //   ),
        //   textInputAction: TextInputAction.continueAction,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.emergencyCall',
        //   ),
        //   textInputAction: TextInputAction.emergencyCall,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.go',
        //   ),
        //   textInputAction: TextInputAction.go,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.join',
        //   ),
        //   textInputAction: TextInputAction.join,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.newline',
        //   ),
        //   textInputAction: TextInputAction.newline,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.next',
        //   ),
        //   textInputAction: TextInputAction.next,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.none',
        //   ),
        //   textInputAction: TextInputAction.none,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.previous',
        //   ),
        //   textInputAction: TextInputAction.previous,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.route',
        //   ),
        //   textInputAction: TextInputAction.route,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.search',
        //   ),
        //   textInputAction: TextInputAction.search,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Action.unspecified',
        //   ),
        //   textInputAction: TextInputAction.unspecified,
        // ),
        // TextField(
        //   decoration: const InputDecoration(
        //     labelText: '用户名',
        //     hintText: '用户名或邮箱',
        //     prefixIcon: Icon(Icons.people),
        //   ),
        //   style: const TextStyle(
        //     color: Colors.red,
        //   ),
        //   textAlign: TextAlign.center,
        //   autofocus: true,
        //   obscureText: true,
        //   contextMenuBuilder: _buildContextMenu,
        //   onChanged: (String text) {
        //     print('First text field: $text (${text.characters.length})');
        //   },
        //   onEditingComplete: () => print('First text field completed.'),
        //   onSubmitted: (String text) => print('submitted text field: $text'),
        //   inputFormatters: [
        //     FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
        //   ],
        //   enabled: true,
        //   cursorColor: Colors.green,
        //   cursorWidth: 10,
        //   cursorRadius: Radius.circular(10),
        //   cursorOpacityAnimates: true,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: '用户名-$name',
        //   ),
        //   controller: _nameController,
        //   onChanged: (name) {
        //     print('controller text111: ${_nameController.text}');
        //   },
        //   onTap: () => _nameController.selection =
        //       const TextSelection(baseOffset: 1, extentOffset: 2),
        // ),
        // TextField(
        //   focusNode: _focusNode1,
        // ),
        // TextField(
        //   focusNode: _focusNode2,
        // ),
        // ElevatedButton(
        //     onPressed: () {
        //       _scopeNode = FocusScope.of(context);
        //       _scopeNode?.requestFocus(_scopeNode?.focusedChild == _focusNode1
        //           ? _focusNode2
        //           : _focusNode1);
        //     },
        //     child: const Text('移动焦点')),
        // ElevatedButton(
        //     onPressed: () {
        //       _scopeNode = FocusScope.of(context);
        //       _scopeNode?.unfocus();
        //     },
        //     child: const Text('隐藏键盘')),
        Form(
          onChanged: () {
            print('表单有变化');
          },
          onWillPop: () async {
            return true;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '用户名',
                ),
                validator: (value) {
                  return value!.trim().length > 5 ? null : '密码不能少于6位';
                }
              ),
              Builder(builder: (context) {
                return ElevatedButton(
                  child: const Text('提交'),
                  onPressed: () {
                    if (Form.of(context).validate()) {
                      print('表单正常提交');
                    }
                  }
                );
              },)
            ]
          ),
        )
      ]),
    );
  }
}

TextEditingController _nameController = TextEditingController(text: '张三是个好孩子');

Widget _buildContextMenu(BuildContext context, EditableTextState state) {
  final List<ContextMenuButtonItem> buttonItems = state.contextMenuButtonItems;
  buttonItems.insert(
      0,
      ContextMenuButtonItem(
        label: '哈哈哈',
        onPressed: () {},
      ));
  buttonItems.add(ContextMenuButtonItem(
    label: '呵呵呵',
    onPressed: () {},
  ));
  return AdaptiveTextSelectionToolbar.buttonItems(
    anchors: state.contextMenuAnchors,
    buttonItems: buttonItems,
  );
}
