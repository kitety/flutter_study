import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/components/card_content/animate_center_img.dart';
import 'package:flutter_study/pages/for_you/components/card_content/constant.dart';
import 'package:get/get.dart';

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
  //controller 部分
  late AnimationController btnBigController;
  late AnimationController btnSmallController;
  late AnimationController heartController;
  late AnimationController cardScaleController;
  late AnimationController cardSlideController;

  // animations
  late Animation<double> btnBigAnimation;
  late Animation<double> btnSmallAnimation;
  late Animation<double> heartAnimation;
  late Animation<double> cardScaleAnimation;
  late Animation<Offset> cardSlideAnimation;
  // heartAnimation
  late Animation<double> heartOpacityAnimation;
  late Animation<double> heartSizeAnimation;
  late Animation<double> heartLeftAnimation;
  late Animation<double> heartTopAnimation;

  bool isBtnSmallPhase = false;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: cardSlideAnimation,
      child: ScaleTransition(
        scale: cardScaleAnimation,
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
      child: Row(
        children: [
          ScaleTransition(
            scale: isBtnSmallPhase ? btnSmallAnimation : btnBigAnimation,
            child: const Image(image: chatImage, width: 50, height: 50),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: handleBottomBtnTap,
            child: ScaleTransition(
              scale: isBtnSmallPhase ? btnSmallAnimation : btnBigAnimation,
              child: const Image(image: likeImage, width: 50, height: 50),
            ),
          ),
        ],
      ),
    );
  }

  AnimateCenterImg buildHeartWidget() {
    List<Animation<double>> heartAnimations = [
      heartOpacityAnimation,
      heartSizeAnimation,
      heartLeftAnimation,
      heartTopAnimation,
    ];
    return AnimateCenterImg(
      animations: heartAnimations,
    );
  }

  Image buildImgWidget() {
    return const Image(
      image: AssetImage('images/for-you.jpg'),
      fit: BoxFit.contain,
    );
  }

  @override
  void dispose() {
    super.dispose();
    disposeAllController();
  }

  void disposeAllController() {
    //销毁
    btnBigController.dispose();
    btnSmallController.dispose();
    heartController.dispose();
    cardScaleController.dispose();
    cardSlideController.dispose();
  }

  void handleBottomBtnTap() async {
    final allControllers = [
      btnSmallController,
      heartController,
      cardScaleController,
      cardSlideController
    ];
    int index = 0;
    btnSmallController.forward();
    for (var controller in allControllers) {
      controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          index += 1;
          if (index == allControllers.length) {
            widget.handleNext();
          } else {
            final nextController = allControllers[index];
            nextController.forward();
          }
        }
      });
    }
  }

  void initAllAnimations() {
    double screenWidth = Get.mediaQuery.size.width;
    double screenHeight = Get.mediaQuery.size.height;
    // 按钮变大
    btnBigController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: btnScaleBigTime),
    );
    // 按钮变小
    btnSmallController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: btnScaleSmallTime),
    );
    // heart动画
    heartController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: heartAnimationTime),
    );
    // 卡片Scale动画
    cardScaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: cardScaleTime),
    );
    cardSlideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: cardSlideTime),
    );

    // 按钮放大的动画
    btnBigAnimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 1.0),
        weight: 1,
      )
    ]).animate(btnBigController);
    // 按钮缩小的动画
    btnSmallAnimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.0),
        weight: 1,
      )
    ]).animate(btnSmallController);

    // 爱心透明度
    heartOpacityAnimation = TweenSequence([
      //放大
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 1.0),
        weight: 1,
      ),
      // 等待
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 1.0),
        weight: 1,
      ),
      // 缩小
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 1.0),
        weight: 0.6,
      ),
    ]).animate(heartController);
    // 爱心尺寸
    heartSizeAnimation = TweenSequence([
      // 放大
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: heartMainSize),
        weight: 1,
      ),
      // 等待
      TweenSequenceItem(
        tween: Tween(begin: heartMainSize, end: heartMainSize),
        weight: 1,
      ),
      // 缩小
      TweenSequenceItem(
        tween: Tween(begin: heartMainSize, end: heartSecondSize),
        weight: 0.3,
      ),
      TweenSequenceItem(
        tween: Tween(begin: heartSecondSize, end: heartSecondSize),
        weight: 0.3,
      )
    ]).animate(heartController);
    // 爱心左侧距离
    heartLeftAnimation = TweenSequence([
      // 放大
      TweenSequenceItem(
        tween:
            Tween(begin: screenWidth, end: (screenWidth - heartMainSize) / 2),
        weight: 1,
      ),
      // 等待
      TweenSequenceItem(
        tween: Tween(
            begin: (screenWidth - heartMainSize) / 2,
            end: (screenWidth - heartMainSize) / 2),
        weight: 1,
      ),
      // 缩小
      TweenSequenceItem(
        tween: Tween(
            begin: (screenWidth - heartMainSize) / 2,
            end: (screenWidth - 200) / 2),
        weight: 0.3,
      ),
      // 缩小
      TweenSequenceItem(
        tween: Tween(
            begin: (screenWidth - heartSecondSize) / 2,
            end: (screenWidth - heartSecondSize) / 2),
        weight: 0.3,
      ),
    ]).animate(heartController);
    // 爱心顶部距离
    heartTopAnimation = TweenSequence([
      // 放大
      TweenSequenceItem(
        tween: Tween(begin: screenHeight / 2, end: heartTopDistance),
        weight: 1,
      ),
      // 等待
      TweenSequenceItem(
        tween: Tween(begin: heartTopDistance, end: heartTopDistance),
        weight: 1,
      ),
      // 缩小
      TweenSequenceItem(
        tween: Tween(begin: heartTopDistance, end: heartTopDistance),
        weight: 0.6,
      )
    ]).animate(heartController);
    // //全部放入爱心的动画list
    // heartAnimations.add(heartOpacityAnimation);
    // heartAnimations.add(heartSizeAnimation);
    // heartAnimations.add(heartLeftAnimation);
    // heartAnimations.add(heartTopAnimation);
    // 卡片动画的缩放
    cardScaleAnimation = TweenSequence(
      [
        // bottom的时间
        TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 0.95),
          weight: 1,
        ),
      ],
    ).animate(cardScaleController);
    // 卡片的slide
    cardSlideAnimation = TweenSequence(
      [
        TweenSequenceItem(
          tween: Tween(
            begin: Offset.zero,
            end: const Offset(0.0, -1.0),
          ),
          weight: 1,
        ),
      ],
    ).animate(cardSlideController);

    for (var animation in [
      btnBigAnimation,
      btnSmallAnimation,
      heartOpacityAnimation,
      heartSizeAnimation,
      heartLeftAnimation,
      heartTopAnimation,
      cardScaleAnimation,
      cardSlideAnimation
    ]) {
      animation.addListener(() {
        setState(() {});
      });
    }
    startBtnScaleBigAnimation();
  }

  @override
  void initState() {
    super.initState();
    initAllAnimations();
  }

  void startBtnScaleBigAnimation() {
    btnBigController.forward();
    btnBigController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isBtnSmallPhase = true;
        });
      }
    });
  }
}
