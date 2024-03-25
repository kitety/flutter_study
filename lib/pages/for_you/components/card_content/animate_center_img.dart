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
    final opacityLevel = show ? 1.0 : 0.0;

    return SizedBox(
      width: screenWidth,
      child: AnimatedOpacity(
        opacity: opacityLevel,
        duration: heartDuration,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: show ? imgWidth.toDouble() : 0,
              height: show ? imgWidth.toDouble() : 0,
              top: show ? 90.0 : screenHeight - 300,
              left: show ? (screenWidth - imgWidth) / 2 : screenWidth - 50,
              duration: heartDuration,
              curve: Curves.easeInOutBack,
              child: imgContent,
            ),
          ],
        ),
      ),
    );
  }

  void handleShowHeart() {
    setState(() {
      show = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controllers.add(handleShowHeart);
  }
}
