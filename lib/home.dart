import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool animate = true;
  double opacity = 0.9;

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
              opacity: opacity,
              duration: Duration(
                seconds: 1,
              ),
              child: FlutterLogo(size: 150),
              curve: Curves.easeIn,
            ),
            ElevatedButton(
              onPressed: () {
                if (animate) {
                  setState(() {
                    opacity = 0.1;
                    animate = !animate;
                  });
                } else {
                  setState(() {
                    opacity = 0.9;
                    animate = !animate;
                  });
                }
              },
              child: Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}
