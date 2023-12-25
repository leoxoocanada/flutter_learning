import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Switch(
            value: true,//当前状态
            onChanged:(value){
            },
          ),
          Checkbox(
            value: null,
            tristate: true,
            activeColor: Colors.red,
            onChanged: (value){
              
            }
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名或邮箱',
              prefixIcon: Icon(Icons.people),
              // keyboardType: TextInputType.emailAddress,
            )
          )
        ]
      ),
    );
  }
}
