import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/components/card_content/constant.dart';

class AnimateCenterImg extends StatefulWidget {
  final List<Function> controllers;
  const AnimateCenterImg({Key? key, required this.controllers})
      : super(key: key);

  @override
  _AnimateCenterImgState createState() => _AnimateCenterImgState();
}

class _AnimateCenterImgState extends State<AnimateCenterImg> {
  bool show = false;
  double opacity = 0.0;
  double size = 0.0;
  double positionX = 0.0;
  double positionY = 0.0;
  double top = 0.0;
  double left = 0.0;
  Duration duration = heartScaleBigDuration;
  @override
  Widget build(BuildContext context) {
    const likeImage = AssetImage('images/like_btn.png');
    var imgWidth = show ? 240 : 120;
    var imgContent = SizedBox(
      width: imgWidth.toDouble(),
      height: imgWidth.toDouble(),
      child: Image(
        image: likeImage,
        width: imgWidth.toDouble(),
        fit: BoxFit.contain,
      ),
    );
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    var topVal = show ? top : screenHeight - 300;
    var leftVal = show ? left : screenWidth - 50;

    return SizedBox(
      width: screenWidth,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: duration,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: size,
              height: size,
              top: topVal,
              left: leftVal,
              duration: duration,
              curve: Curves.easeInOutBack,
              child: imgContent,
            ),
          ],
        ),
      ),
    );
  }

  void handleShowHeart() async {
    print('zhixingzhixing');
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    var imgWidth = 240.0;
    // 首先执行放大
    setState(() {
      opacity = 1.0;
      size = imgWidth;
      top = 90.0;
      left = (screenWidth - imgWidth) / 2;
      show = true;
      duration = heartScaleBigDuration;
    });
    // 等待放大的之间结束
    await Future.delayed(heartScaleBigDuration);
    // 等待 放大到缩小的间隔
    await Future.delayed(heartScaleBigSmallWaitDuration);
    imgWidth = 200.0;
    setState(() {
      opacity = 0.1;
      size = 200.0;
      top = 90.0;
      left = (screenWidth - imgWidth) / 2;
      show = true;
      duration = heartScaleBigSmallDuration;
    });
    // await Future.delayed(heartScaleBigSmallWaitDuration, () {});
    // await Future.delayed(heartScaleSmallDuration, () {});
    // await Future.delayed(const Duration(seconds: 2), () {
    //   setState(() {
    //     opacity = 0.0;
    //     size = 120.0;
    //     show = true;
    //   });
    // });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controllers.add(handleShowHeart);
  }
}
