import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/components/card_content/constant.dart';

class AnimateBottomBtn extends StatefulWidget {
  final Widget child;
  final List<AnimationController> controllers;
  const AnimateBottomBtn(
      {Key? key, required this.child, required this.controllers})
      : super(key: key);

  @override
  _AnimateBottomBtnState createState() => _AnimateBottomBtnState();
}

class _AnimateBottomBtnState extends State<AnimateBottomBtn>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: bottomBtnShowDuration,
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );
  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: widget.child,
    );
  }


  @override
  void initState() {
    super.initState();
    _controller.forward();
    widget.controllers.add(_controller);
  }
}
