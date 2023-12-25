import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        child: const Text('点赞'),
        onPressed: () {
          print('xxxxx');
        }
      ),
      TextButton(
        child: const Text('点赞'),
        onPressed: () {
          print('xxxxx');
        }
      ),
      OutlinedButton(
        child: const Text('点赞'),
        onPressed: () {
          print('xxxxx');
        }
      ),
      IconButton(
        icon: const Icon(Icons.thumb_up),
        onPressed: () {
          print('xxxxx');
        }
      ),
      ElevatedButton.icon(
        icon: const Icon(Icons.thumb_up),
        label: const Text('点赞'),
        onPressed: () {
          print('xxxxx');
        }
      ),
      TextButton.icon(
        icon: const Icon(Icons.thumb_up),
        label: const Text('点赞'),
        onPressed: () {
          print('xxxxx');
        }
      ),
      OutlinedButton.icon(
        icon: const Icon(Icons.thumb_up),
        label: const Text('点赞'),
        onPressed: () {
          print('xxxxx');
        }
      ),
    ],);
  }
}
