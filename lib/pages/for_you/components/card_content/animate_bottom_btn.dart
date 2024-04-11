import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/components/card_content/constant.dart';

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
  bool isComplete = false;
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
      scale: isComplete ? widget.bigAnimation : widget.smallAnimation,
      child: widget.child,
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      _controller.forward();
    });
    widget.controllers.add(_controller);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isComplete = true;
        });
      }
    });
  }
}
