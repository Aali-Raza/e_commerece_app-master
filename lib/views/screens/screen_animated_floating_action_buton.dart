import 'package:flutter/material.dart';

class ScreenAnimatedFloatingActionButon extends StatefulWidget {
  @override
  State<ScreenAnimatedFloatingActionButon> createState() =>
      _ScreenAnimatedFloatingActionButonState();
}

class _ScreenAnimatedFloatingActionButonState
    extends State<ScreenAnimatedFloatingActionButon>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  late AnimationController _animationController;
  late Animation<Color?> _buttonColor;
  late Animation<double> _animateIcon;
  late Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
      begin: Colors.white,
      end: Colors.white,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget cameraButton() {
    return Transform(
      transform: Matrix4.translationValues(
        0.0,
        _translateButton.value * 2.0,
        0.0,
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 0,
        onPressed: () {
          // Perform camera button action
        },
        tooltip: 'Camera',
        child: Icon(Icons.camera_alt,color: Colors.black,),
      ),
    );
  }

  Widget documentButton() {
    return Transform(
      transform: Matrix4.translationValues(
        0.0,
        _translateButton.value,
        0.0,
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.yellow,
        elevation: 0,
        onPressed: () {
          // Perform document button action
        },
        tooltip: 'Document',
        child: Icon(
          Icons.camera_alt,
          color: Color(0xff11C9BD),
        ),
      ),
    );
  }

  Widget toggle() {
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: _buttonColor.value,
      onPressed: animate,
      tooltip: 'Toggle',
      child: AnimatedIcon(
        icon: AnimatedIcons.menu_close,color: Colors.blue,
        progress: _animateIcon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          cameraButton(),
          documentButton(),
          toggle(),
        ],
      ),
    );
  }
}
