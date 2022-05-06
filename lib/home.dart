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
        title: Text('Animated Opacity Demo'),
        backgroundColor: Color(0xffef5366),
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
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Image.asset('assets/logo.png'),
              ),
              curve: Curves.easeIn,
              onEnd: () => print('Animation is completed'),
            ),
            ElevatedButton(
              onPressed: _animateOpacity,
              child: Text('Animate'),
              style: ElevatedButton.styleFrom(primary: Color(0xffef5366)),
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
