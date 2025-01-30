import 'dart:async';
import 'package:flutter/material.dart';

extension AnimatedCircleExtension on Widget {
  Widget animatedCircle({
    double initialSize = 50.0,
    double finalSize = 100.0,
    Color color = Colors.blue,
    String text = 'Auto',
    int duration = 500,
  }) {
    return _AnimatedCircle(
      initialSize: initialSize,
      finalSize: finalSize,
      color: color,
      text: text,
      duration: duration,
      key: UniqueKey(),
    );
  }
}

class _AnimatedCircle extends StatefulWidget {
  final double initialSize;
  final double finalSize;
  final Color color;
  final String text;
  final int duration;

  const _AnimatedCircle({
    required Key key,
    required this.initialSize,
    required this.finalSize,
    required this.color,
    required this.text,
    required this.duration,
  }) : super(key: key);

  @override
  __AnimatedCircleState createState() => __AnimatedCircleState();
}

class __AnimatedCircleState extends State<_AnimatedCircle> {
  late double _size;
  late Timer _timer;
  bool _forward = true;

  @override
  void initState() {
    super.initState();
    _size = widget.initialSize;
    _timer = Timer.periodic(Duration(milliseconds: widget.duration), (timer) {
      setState(() {
        if (_forward) {
          _size = widget.finalSize;
        } else {
          _size = widget.initialSize;
        }
        _forward = !_forward;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: widget.duration),
      width: _size,
      height: _size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.color,
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
