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

  late AnimationController _animationController;
  late Animation<double> buttonAnimation;
  late Animation<Offset> cardTranslateAnimation;

  //controller 部分
  late AnimationController btnBigController;
  late AnimationController btnSmallController;
  late AnimationController heartController;
  late AnimationController cardScaleController;
  late AnimationController cardSlideController;
  // animations
  late final btnBigAnimation;
  late final btnSmallAnimation;
  late final heartAnimation;
  late final cardScaleAnimation;
  late final cardSlideAnimation;

  @override
  Widget build(BuildContext context) {
    print('btnBigAnimation:${btnBigAnimation.value}');
    // print('cardTranslateAnimation:${cardTranslateAnimation.value}');
    return SlideTransition(
      position: cardTranslateAnimation,
      child: ScaleTransition(
        scale: cardScaleAnimation,
        child: Stack(
          children: [
            buildImgWidget(),
            buildBottomBtnsWidget(btnBigAnimation),
            buildHeartWidget(),
          ],
        ),
      ),
    );
  }

  Positioned buildBottomBtnsWidget(Animation<double> animation) {
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
              bigAnimation: btnBigAnimation,
              smallAnimation: btnSmallAnimation,
              child: const Image(image: chatImage, width: 50, height: 50),
            ),
            const SizedBox(
              width: 20,
            ),
            AnimateBottomBtn(
              controllers: btnControllers,
              bigAnimation: btnBigAnimation,
              smallAnimation: btnSmallAnimation,
              child: const Image(image: likeImage, width: 50, height: 50),
            )
          ],
        ),
      ),
    );
  }

  Opacity buildHeartWidget() {
    // final heartOpacityValue = cardScaleAnimation.value;
    const heartOpacityValue = 1.0;
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
            'https://picsum.photos/id/${widget.index + 1}/400/200'),
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
    // _scaleController.dispose();
    // _slideController.dispose();
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
    // for (var controller in btnControllers) {
    //   controller.reverse();
    // }
    // await Future.delayed(bottomBtnShowDuration);
    // 心形出现动画
    // for (var controller in heartControllers) {
    //   controller.call();
    // }
    // await Future.delayed(heartScaleBigSmallDuration);
    // for (var controller in heartControllers) {
    //   controller.call();
    // }

    //   late final btnBigAnimation;
    // late final btnSmallAnimation;
    // late final heartAnimation;
    // late final cardScaleAnimation;
    // late final cardSlideAnimation;
    final allAnimations = [
      btnBigAnimation,
      btnSmallAnimation,
      heartAnimation,
      cardScaleAnimation,
      cardSlideAnimation
    ];
    final allControllers = [
      btnBigController,
      btnSmallController,
      heartController,
      cardScaleController,
      cardSlideController
    ];
    num index = 0;
    btnSmallController.forward();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: allAnimationTime),
    );
    // 按钮变大
    btnBigController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    // 按钮变小
    btnSmallController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    // heart动画
    heartController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    // 卡片Scale动画
    cardScaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    // card slide 动画
    // cardScaleAnimation = TweenSequence([
    //   TweenSequenceItem(
    //     tween: Tween(begin: 1.0, end: 0.0),
    //     weight: bottomBtnShowTime.toDouble(),
    //   ),
    // ]).animate(_animationController);

    // 按钮放大的动画
    btnBigAnimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 1.0),
        weight: bottomBtnShowTime.toDouble(),
      )
    ]).animate(btnBigController);
    btnSmallAnimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.0),
        weight: bottomBtnShowTime.toDouble(),
      )
    ]).animate(btnSmallController);

    cardScaleAnimation = TweenSequence(
      [
        // bottom的时间
        TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 1.0),
          weight: bottomBtnShowTime.toDouble(),
        ),
        TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 1.0),
          weight: 8 *
              (heartScaleBigSmallWaitDurationTime + heartScaleBigDurationTime)
                  .toDouble(),
        ),
        //真实的变换的时间
        TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 0.95),
          weight: cardScaleTime.toDouble(),
        ),
        TweenSequenceItem(
          tween: Tween(begin: 0.95, end: 0.95),
          weight: beforeTranslationDelay.toDouble(),
        ),
      ],
    ).animate(_animationController);
    cardTranslateAnimation = TweenSequence(
      [
        TweenSequenceItem(
          tween: Tween(
            begin: Offset.zero,
            end: Offset.zero,
          ),
          weight: 8 *
              (heartScaleBigSmallWaitDurationTime + heartScaleBigDurationTime)
                  .toDouble(),
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: Offset.zero,
            end: const Offset(0.0, -1.0),
          ),
          weight: 4 *
              (heartScaleBigSmallWaitDurationTime + heartScaleBigDurationTime)
                  .toDouble(),
        ),
      ],
    ).animate(_animationController);
    print('1111');
    print(btnBigAnimation);
    for (var animation in [
      btnBigAnimation,
      btnSmallAnimation,
      // heartAnimation,
      // cardScaleAnimation,
      // cardSlideAnimation
    ]) {
      animation.addListener(() {
        setState(() {});
      });
    }
    btnBigController.forward();
  }
}
