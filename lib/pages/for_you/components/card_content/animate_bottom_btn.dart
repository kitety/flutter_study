import 'package:flutter/material.dart';

class AnimateBottomBtn extends StatefulWidget {
  final Widget child;
  final List<AnimationController> controllers;
  final Animation<double> bigAnimation;
  final Animation<double> smallAnimation;
  const AnimateBottomBtn({
    Key? key,
    required this.child,
    required this.controllers,
    required this.bigAnimation,
    required this.smallAnimation,
  }) : super(key: key);

  @override
  _AnimateBottomBtnState createState() => _AnimateBottomBtnState();
}

class _AnimateBottomBtnState extends State<AnimateBottomBtn>
    with TickerProviderStateMixin {
  bool isBigPhase = true;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: isBigPhase ? widget.bigAnimation : widget.smallAnimation,
      child: widget.child,
    );
  }

  @override
  void initState() {
    super.initState();
    widget.bigAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isBigPhase = false;
        });
      }
    });
  }
}
