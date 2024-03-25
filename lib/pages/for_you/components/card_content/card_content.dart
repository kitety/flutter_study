import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/components/card_content/animate_bottom_btn.dart';
import 'package:flutter_study/pages/for_you/components/card_content/animate_center_img.dart';
import 'package:flutter_study/pages/for_you/components/card_content/constant.dart';

class CardContent extends StatefulWidget {
  final int index;
  final VoidCallback handleNext;
  const CardContent({Key? key, required this.index, required this.handleNext})
      : super(key: key);

  @override
  _CardContentState createState() => _CardContentState();
}

class _CardContentState extends State<CardContent>
    with TickerProviderStateMixin {
  List<AnimationController> btnControllers = [];
  List<Function> heartControllers = [];
  late final AnimationController _scaleController = AnimationController(
    duration: cardScaleDuration,
    vsync: this,
  );
  late final AnimationController _slideController = AnimationController(
    duration: translationDuration,
    vsync: this,
  );
  late final Animation<Offset> _slideAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, -1.0),
  ).animate(_slideController);
  late final _scaleAnimation = Tween<double>(
    begin: 1.0,
    end: 0.95,
  ).animate(_scaleController);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Stack(
          children: [
            buildImgWidget(),
            buildBottomBtnsWidget(),
            buildHeartWidget(),
          ],
        ),
      ),
    );
  }

  Positioned buildBottomBtnsWidget() {
    const likeImage = AssetImage('images/like_btn.png');
    const chatImage = AssetImage('images/chat.png');
    return Positioned(
      bottom: 20,
      right: 20,
      child: GestureDetector(
        onTap: handleBottomBtnTap,
        child: Row(
          children: [
            AnimateBottomBtn(
              controllers: btnControllers,
              child: const Image(image: chatImage, width: 50, height: 50),
            ),
            const SizedBox(
              width: 20,
            ),
            AnimateBottomBtn(
              controllers: btnControllers,
              child: const Image(image: likeImage, width: 50, height: 50),
            )
          ],
        ),
      ),
    );
  }

  Opacity buildHeartWidget() {
    final heartOpacityValue = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(_scaleController).value;
    return Opacity(
      // duration: cardScaleDuration,
      opacity: heartOpacityValue,
      child: AnimateCenterImg(controllers: heartControllers),
    );
  }

  Container buildImgWidget() {
    return Container(
      width: double.infinity,
      color: Colors.black12,
      child: Image(
        image: NetworkImage(
          'https://picsum.photos/200/300?random=${widget.index}',
        ),
        fit: BoxFit.contain,
      ),
    );
  }

  @override
  void dispose() {
    print('销毁');
    super.dispose();
    // 销毁所有的controller
    for (var controller in btnControllers) {
      controller.dispose();
    }
    _scaleController.dispose();
    _slideController.dispose();
  }
  // Timeline
  // t(1).(2).(3).(delay)

// 关掉页面 需要判断页面还存在

// -1
// ---3
// -----5
// ---------6
// ---------------7
// 0-10  8   7  6  8  9
// value;

  void handleBottomBtnTap() async {
    // TweenSequence(items);
    // 按钮消失动画
    for (var controller in btnControllers) {
      controller.reverse();
    }
    await Future.delayed(bottomBtnShowDuration);
    // 心形出现动画
    for (var controller in heartControllers) {
      controller.call();
    }
    await Future.delayed(heartScaleBigSmallDuration);
    // 爱心变小，透明
    // 卡片缩放动画
    _scaleController.forward();
    await Future.delayed(cardScaleDuration);
    await Future.delayed(beforeTranslationDuration);
    // // 卡片平移动画
    _slideController.forward();
    await Future.delayed(translationDuration);
    widget.handleNext();
  }
}
