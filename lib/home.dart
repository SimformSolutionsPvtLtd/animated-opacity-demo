import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _animate = true;
  double _opacity = 0.9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(
                seconds: 1,
              ),
              child: FlutterLogo(size: 150),
              curve: Curves.easeIn,
            ),
            ElevatedButton(
              onPressed: _animateOpacity,
              child: Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }

  void _animateOpacity() {
    if (_animate) {
      setState(() {
        _opacity = 0.1;
        _animate = !_animate;
      });
    } else {
      setState(() {
        _opacity = 0.9;
        _animate = !_animate;
      });
    }
  }
}
