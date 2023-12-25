import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
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
          TextField(
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名或邮箱',
              prefixIcon: Icon(Icons.people),
            ),
          ),
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
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.done',
            ),
            textInputAction: TextInputAction.done,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.continueAction',
            ),
            textInputAction: TextInputAction.continueAction,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.emergencyCall',
            ),
            textInputAction: TextInputAction.emergencyCall,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.go',
            ),
            textInputAction: TextInputAction.go,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.join',
            ),
            textInputAction: TextInputAction.join,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.newline',
            ),
            textInputAction: TextInputAction.newline,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.next',
            ),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.none',
            ),
            textInputAction: TextInputAction.none,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.previous',
            ),
            textInputAction: TextInputAction.previous,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.route',
            ),
            textInputAction: TextInputAction.route,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.search',
            ),
            textInputAction: TextInputAction.search,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Action.unspecified',
            ),
            textInputAction: TextInputAction.unspecified,
          ),
        ]
      ),
    );
  }
}
