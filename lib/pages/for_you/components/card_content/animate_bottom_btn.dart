import 'package:flutter/material.dart';

class AnimateBottomBtn extends StatefulWidget {
  final Widget child;
  const AnimateBottomBtn({Key? key, required this.child}) : super(key: key);

  @override
  _AnimateBottomBtnState createState() => _AnimateBottomBtnState();
}

class _AnimateBottomBtnState extends State<AnimateBottomBtn>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );
  @override
  Widget build(BuildContext context) {
    print(_animation);
    return ScaleTransition(
      scale: _animation,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.forward();
  }
}
