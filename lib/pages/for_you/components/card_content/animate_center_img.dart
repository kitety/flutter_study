import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/components/card_content/constant.dart';

class AnimateCenterImg extends StatefulWidget {
  final List<Function> controllers;
  final heartAnimations;
  const AnimateCenterImg({
    Key? key,
    required this.controllers,
    required this.heartAnimations,
  }) : super(key: key);

  @override
  _AnimateCenterImgState createState() => _AnimateCenterImgState();
}

class _AnimateCenterImgState extends State<AnimateCenterImg> {
  late AnimationController controller;
  bool show = true;
  double opacity = 0.0;
  double size = 0.0;
  double positionX = 0.0;
  double positionY = 0.0;
  double top = 0.0;
  double left = 0.0;
  Duration duration = heartScaleBigDuration;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    final headtOpacity = widget.heartAnimations[0].value;
    final headtSize = widget.heartAnimations[1].value;
    if (headtSize > 0) {
      var imgWidth = 240.0;
      opacity = 1.0;
      size = imgWidth;
      top = 90.0;
      left = (screenWidth - imgWidth) / 2;
      show = true;
      duration = heartScaleBigDuration;
    }
    // final leftVal = widget.heartAnimations[2].value;
    print('headtOpacity:$headtOpacity,headtSize:$headtSize');
    const likeImage = AssetImage('images/like_btn.png');
    var imgWidth = headtSize;
    var imgContent = SizedBox(
      width: imgWidth.toDouble(),
      height: imgWidth.toDouble(),
      child: Image(
        image: likeImage,
        width: imgWidth.toDouble(),
        fit: BoxFit.contain,
      ),
    );

    // var topVal = show ? 0 : screenHeight - 300;
    // var leftVal = show ? left : screenWidth - 50;

    var topVal = headtSize > 0 ? 90 : screenHeight - 300;
    var leftVal =
        headtSize > 0 ? (screenWidth - imgWidth) / 2 : screenWidth - 50;
    return SizedBox(
      width: screenWidth.toDouble(),
      child: AnimatedOpacity(
        opacity: headtSize > 0 ? 1 : 0,
        duration: duration,
        child: Stack(
          children: [
            AnimatedPositioned(
              // width: headtSize.toDouble(),
              // height: headtSize.toDouble(),
              // top: headtSize / 24 * 9,
              // left: leftVal,
              // // duration: duration,
              // child: imgContent,
              width: 240,
              height: 240,
              top: topVal.toDouble(),
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
      left = (screenWidth - imgWidth) / 2;
      top = 90.0;
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
      left = (screenWidth - imgWidth) / 2;
      top = 90.0;
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
    // widget.controllers.add(handleShowHeart);
  }
}
