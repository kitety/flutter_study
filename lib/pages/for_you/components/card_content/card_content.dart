import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/components/card_content/animate_bottom_btn.dart';
import 'package:flutter_study/pages/for_you/components/card_content/animate_center_img.dart';
import 'package:flutter_study/pages/for_you/components/card_content/constant.dart';

class CardContent extends StatefulWidget {
  final int index;
  const CardContent({Key? key, required this.index}) : super(key: key);

  @override
  _CardContentState createState() => _CardContentState();
}

class _CardContentState extends State<CardContent>
    with TickerProviderStateMixin {
  List<AnimationController> btnControllers = [];
  List<Function> heartControllers = [];
  late final AnimationController _controller = AnimationController(
    duration: cardScaleDuration,
    vsync: this,
  );

  @override
  Widget build(BuildContext context) {
    const likeImage = AssetImage('images/like_btn.png');
    const chatImage = AssetImage('images/chat.png');
    return Container(
      child: ScaleTransition(
        scale: Tween<double>(
          begin: 1.0, // 原始宽度
          end: 0.95, // 结束宽度（原始宽度的0.85倍）
        ).animate(_controller),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              color: Colors.black12,
              child: Image(
                image: NetworkImage(
                  'https://picsum.photos/200/300?random=${widget.index}',
                ),
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: GestureDetector(
                onTap: handleBottomBtnTap,
                child: Row(
                  children: [
                    AnimateBottomBtn(
                      controllers: btnControllers,
                      child:
                          const Image(image: chatImage, width: 50, height: 50),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    AnimateBottomBtn(
                      controllers: btnControllers,
                      child:
                          const Image(image: likeImage, width: 50, height: 50),
                    )
                  ],
                ),
              ),
            ),
            Opacity(
              // duration: cardScaleDuration,
              opacity: Tween<double>(
                begin: 1.0,
                end: 0.95,
              ).animate(_controller).value,
              child: AnimateCenterImg(controllers: heartControllers),
            ),
          ],
        ),
      ),
    );
  }

  void handleBottomBtnTap() async {
    for (var controller in btnControllers) {
      controller.reverse();
    }
    await Future.delayed(const Duration(milliseconds: bottomBrnShowTime));
    for (var controller in heartControllers) {
      controller.call();
    }
    await Future.delayed(const Duration(milliseconds: heartDurationTime));
    _controller.forward();
    await Future.delayed(const Duration(milliseconds: cardScaleTime));
  }
}
