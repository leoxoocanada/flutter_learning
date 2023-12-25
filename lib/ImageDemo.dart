import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const Image(
          image: AssetImage('images/logo.png'),
          width: 200,
        ),
        Image.asset(
          'images/logo.png',
          width: 200,
        ),
        const Image(
          image: NetworkImage(
              'https://www.baidu.com/img/flexible/logo/pc/result.png'),
          width: 200,
        ),
        Image.network(
          'https://www.baidu.com/img/flexible/logo/pc/result.png',
          width: 200,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 100,
              fit: BoxFit.contain),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 100,
              fit: BoxFit.cover),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 100,
              fit: BoxFit.fill),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 100,
              fit: BoxFit.fitHeight),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 100,
              fit: BoxFit.fitWidth),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 100,
              fit: BoxFit.none),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 100,
              fit: BoxFit.scaleDown),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 100,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
              fit: BoxFit.scaleDown),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 100,
              color: Colors.blue,
              colorBlendMode: BlendMode.color,
              fit: BoxFit.scaleDown),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
            image: AssetImage('images/logo.png'),
            width: 300,
            height: 300,
            fit: BoxFit.scaleDown,
            repeat: ImageRepeat.noRepeat,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
            image: AssetImage('images/logo.png'),
            width: 300,
            height: 300,
            fit: BoxFit.scaleDown,
            repeat: ImageRepeat.repeat,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
            image: AssetImage('images/logo.png'),
            width: 300,
            height: 300,
            fit: BoxFit.scaleDown,
            repeat: ImageRepeat.repeatX,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 10),
          ),
          child: const Image(
            image: AssetImage('images/logo.png'),
            width: 300,
            height: 300,
            fit: BoxFit.scaleDown,
            repeat: ImageRepeat.repeatY,
          ),
        ),
        const Text(
          '\uE03e',
          style: TextStyle(
            fontFamily: 'MaterialIcons',
            fontSize: 200,
            color: Colors.green,
          ),
        ),
        const Icon(
          Icons.accessible,
          size: 200,
          color: Colors.green,
        ),
        const Text('前端大神勇者无敌',
            style: TextStyle(
              fontFamily: 'DFDK',
              fontSize: 80,
            )),
        const Text('\ue6a8',
            style: TextStyle(
              fontFamily: 'image_haven_font',
              fontSize: 80,
              color: Colors.red,
            )),
        const Text('\ue66c',
            style: TextStyle(
              fontFamily: 'image_haven_font',
              fontSize: 80,
              color: Colors.red,
            )),
        const Icon(
          MyIcon.lu,
          size: 80,
          color: Colors.red,
        ),
      ],
    ));
  }
}

class MyIcon {
  static const IconData lu = IconData(0xe66c,
      fontFamily: 'image_haven_font', matchTextDirection: true);
}
