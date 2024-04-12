import 'package:flutter/material.dart';

class AnimateCenterImg extends StatefulWidget {
  final List<Animation<double>> animations;
  const AnimateCenterImg({
    Key? key,
    required this.animations,
  }) : super(key: key);

  @override
  _AnimateCenterImgState createState() => _AnimateCenterImgState();
}

class _AnimateCenterImgState extends State<AnimateCenterImg> {
  @override
  Widget build(BuildContext context) {
    final heartOpacity = widget.animations[0].value;
    final heartSize = widget.animations[1].value;
    final leftDistance = widget.animations[2].value;
    final topDistance = widget.animations[3].value;

    const likeImage = AssetImage('images/like_btn.png');
    var imgWidth = heartSize;
    var imgContent = SizedBox(
      width: imgWidth.toDouble(),
      height: imgWidth.toDouble(),
      child: Image(
        image: likeImage,
        width: imgWidth.toDouble(),
        fit: BoxFit.contain,
      ),
    );

    return Opacity(
      opacity: heartOpacity.toDouble(),
      child: Stack(
        children: [
          Positioned(
            width: heartSize.toDouble(),
            height: heartSize.toDouble(),
            top: topDistance,
            left: leftDistance,
            child: imgContent,
          ),
        ],
      ),
    );
  }
}
