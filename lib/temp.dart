import 'package:flutter/material.dart';

class TweenSequencePage extends StatefulWidget {
  const TweenSequencePage({super.key});

  @override
  State<TweenSequencePage> createState() => _TweenSequencePageState();
}

class _TweenSequencePageState extends State<TweenSequencePage>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  Widget build(BuildContext context) {
    // print(_animation?.value);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TweenSequencePage'),
      ),
      body: Stack(alignment: Alignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 50,
              color: Colors.blue,
              margin: EdgeInsets.only(top: _animation?.value ?? 0),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          child: OutlinedButton(
            onPressed: startEasyAnimation,
            child: const Text(
              "点击执行动画",
              style: TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    TweenSequenceItem<double> downMarginItem = TweenSequenceItem<double>(
        tween: Tween(begin: 1.0, end: 300.0), weight: 5);
    TweenSequenceItem<double> upMarginItem = TweenSequenceItem<double>(
      tween: Tween(begin: 300.0, end: 50.0),
      weight: 4,
    );
    TweenSequenceItem<double> downMarginItem2 = TweenSequenceItem<double>(
      tween: Tween(begin: 50.0, end: 200.0),
      weight: 3,
    );
    TweenSequenceItem<double> upMarginItem2 = TweenSequenceItem<double>(
      tween: Tween(begin: 200.0, end: 100.0),
      weight: 2,
    );
    TweenSequenceItem<double> endMarginItem = TweenSequenceItem<double>(
      tween: Tween(begin: 100.0, end: 50.0),
      weight: 1,
    );
    TweenSequence<double> tweenSequence = TweenSequence<double>([
      downMarginItem,
      upMarginItem,
      downMarginItem2,
      upMarginItem2,
      endMarginItem,
    ]);
    _animation = tweenSequence.animate(_animationController!);
    _animation!.addListener(() {
      setState(() {});
    });

    _animation!.addStatusListener((status) {
      print("TweenSequence status:$status");
      if (status == AnimationStatus.completed) {
        print('success');

        ///正向执行完毕后立刻反向执行（倒回去）
        _animationController?.reverse();
      } else if (status == AnimationStatus.dismissed) {
        ///无次数限定执行
        _animationController?.forward();
        print('success');

      }
    });
  }

  void startEasyAnimation() {
    _animationController?.forward();
  }
}
