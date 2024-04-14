import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/model/user.dart';
import 'package:flutter_study/pages/home/common/animation.dart';
import 'package:flutter_study/pages/home/components/userCard.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:get/get.dart';

class HomeTopCard extends StatefulWidget {
  static const double slideAnimationHeight = 100.0;
  static const double tryBoostContainerHeight = 43.0;
  static const double avatarScaleValue = 1.2;
  final int count;
  final double padding;

  final Function(User) handleHiBtnClick;
  final List<User> users;
  const HomeTopCard({
    Key? key,
    required this.count,
    required this.handleHiBtnClick,
    required this.users,
    this.padding = 0,
  }) : super(key: key);

  @override
  State<HomeTopCard> createState() => _HomeTopCardState();
}

class _HomeTopCardState extends State<HomeTopCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _scaleController;
  late Animation<double> textOpacityAnimation;
  late Animation<double> cardTranslateAnimation;
  late Animation<num> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    final isNoUser = widget.users.isEmpty;
    if (isNoUser) {
      return Container();
    }
    int count = widget.users.length;
    double screenWidth = Get.mediaQuery.size.width;
    double contentWidth = screenWidth - widget.padding * 2;
    double contentHeight = contentWidth;
    double slideCardInitTop = contentHeight - HomeTopCard.slideAnimationHeight;
    print(screenWidth);
    final mainTop2UserContent = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: const DecorationImage(
          image: AssetImage('images/bg.png'),
          fit: BoxFit.cover, // 可以根据需要调整图片的填充方式
        ),
      ),
      padding: const EdgeInsets.fromLTRB(8, 11, 8, 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            image: AssetImage('images/boost.png'),
            height: 15,
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            children: [
              Expanded(
                child: UserCard(
                  user: widget.users[0],
                  isWhite: true,
                  handleHiBtnClick: widget.handleHiBtnClick,
                ),
              ),
              const SizedBox(width: 7.0),
              Expanded(
                child: UserCard(
                  user: widget.users[1],
                  isWhite: true,
                  handleHiBtnClick: widget.handleHiBtnClick,
                ),
              ),
            ],
          ),
        ],
      ),
    );
    final content = Column(
      children: [
        Stack(
          children: [
            // 需要计算高度
            SizedBox(
              height: contentWidth,
            ),
            // mainTop2UserContent,
            Positioned(
                top: contentHeight - HomeTopCard.tryBoostContainerHeight,
                left: 0,
                right: 0,
                child: Opacity(
                  opacity: textOpacityAnimation.value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      getTryBoost(context),
                    ],
                  ),
                )),
            Positioned(
              top: cardTranslateAnimation.value *
                      HomeTopCard.tryBoostContainerHeight +
                  (contentHeight -
                      HomeTopCard.slideAnimationHeight -
                      HomeTopCard.tryBoostContainerHeight),
              left: 0,
              right: 0,
              child: Container(
                height: HomeTopCard.slideAnimationHeight,
                decoration: BoxDecoration(
                  color: Color(0xffc6bafd.toInt()),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform.scale(
                          scale: scaleAnimation.value *
                              HomeTopCard.avatarScaleValue,
                          child: Container(
                            padding: const EdgeInsets.only(left: 16, right: 8),
                            child: const CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage("images/avatar.png"),
                            ),
                          ),
                        ),
                        const Text('Your profiles is in boost'),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ),
            ),
            mainTop2UserContent,
          ],
        ),
      ],
    );

    return content;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    _scaleController.dispose();
  }

  Column getTryBoost(BuildContext context) {
    final tryBoostText = LT.t?.DailyPicks_ProfileBoostTry_PageText1 ?? '';
    final inviteBoostText = LT.t?.DailyPicks_ProfileBoostInvite_PageText1 ?? '';
    return Column(
      children: [
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              inviteBoostText,
              style: BodySentence_16.copyWith(color: Black_444),
            ),
            const SizedBox(width: 5.0),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // 触发新的动画
                    print('Try Boost');
                    handleAnimationTrigger();
                  },
                  child: Text(
                    tryBoostText,
                    style: BodyText_16.copyWith(color: ThemeBlu_63D6FA),
                  ),
                ),
                const Image(
                  image: AssetImage(
                    'images/arrow.png',
                  ),
                  width: 18,
                  height: 18,
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }

  void handleAnimationTrigger() {
    _controller.reset();
    _scaleController.reset();
    _controller.forward();
    _scaleController.forward();
    _scaleController.addStatusListener((status) {
      // 循环往复
      if (status == AnimationStatus.completed) {
        _scaleController.repeat();
      }
    });
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _scaleController.stop();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(
        milliseconds: textAndNavAllTime.toInt(),
      ),
      vsync: this,
    );
    _scaleController = AnimationController(
      duration: Duration(
        milliseconds: avatarAnimationAllTime.toInt(),
      ),
      vsync: this,
    );
    scaleAnimation = TweenSequence(
      [
        TweenSequenceItem(
            tween: Tween(begin: 1.0 / 1.2, end: 1.0),
            weight: avatarAnimationTime),
        TweenSequenceItem(
            tween: Tween(begin: 1.0, end: 1.0), weight: avatarAnimationGapTime),
        TweenSequenceItem(
            tween: Tween(begin: 1.0, end: 1.0 / 1.2),
            weight: avatarAnimationTime),
        TweenSequenceItem(
            tween: Tween(begin: 1.0 / 1.2, end: 1.0 / 1.2),
            weight: avatarAnimationGapTime),
      ],
    ).animate(_scaleController);
    textOpacityAnimation = TweenSequence([
      // 文本消失
      TweenSequenceItem(
        tween: Tween(begin: 1.0 / 1.2, end: 0.0),
        weight: textDisappearTime,
      ),
      // 卡片滑下来
      // 卡片保持状态
      // 卡片滑上去
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 0.0),
        weight: barSlideDownTime + barSlideUpTime + barWaitTime,
      ),
      // 文本出现
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 1.0),
        weight: textShowTime,
      )
    ]).animate(_controller);
    cardTranslateAnimation = TweenSequence([
      // 文本消失
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 0.0),
        weight: textDisappearTime,
      ),
      // 卡片滑下来
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 1.0),
        weight: barSlideDownTime,
      ),
      // 卡片保持状态
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 1.0),
        weight: barWaitTime,
      ),
      // 卡片滑上去
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.0),
        weight: barSlideUpTime,
      ),
      // 文本出现
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 0.0),
        weight: textShowTime,
      ),
    ]).animate(_controller);
    //循环一下
    for (var animation in [
      textOpacityAnimation,
      cardTranslateAnimation,
      scaleAnimation
    ]) {
      animation.addListener(() {
        setState(() {});
      });
    }
  }
}
