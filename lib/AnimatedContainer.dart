import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key key}) : super(key: key);

  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: _color,
          duration: Duration(seconds: 1), // 시간
          curve: Curves.fastLinearToSlowEaseIn, // 애니메이션 효과
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8)
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
