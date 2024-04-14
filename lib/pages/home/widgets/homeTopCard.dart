import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/model/user.dart';
import 'package:flutter_study/pages/home/components/userCard.dart';
import 'package:flutter_study/utils/localization_transition.dart';

const avatarAnimationAllTime = avatarAnimationTime + avatarAnimationGapTime;
const avatarAnimationGapTime = 3 * 1000.0;
// avatar
const avatarAnimationTime = 40.0;
// 动画的变量的时间处理
const barSlideDownTime = 500.0;
const barSlideUpTime = 200.0;
const barWaitTime = 3 * 1000.0;

const textAndNavAllTime = barSlideDownTime +
    barSlideUpTime +
    barWaitTime +
    textDisappearTime +
    textShowTime;
const textDisappearTime = 200.0;
const textShowTime = 100.0;

class HomeTopCard extends StatefulWidget {
  final int count;
  final Function(User) handleHiBtnClick;
  final List<User> users;
  const HomeTopCard(
      {Key? key,
      required this.count,
      required this.handleHiBtnClick,
      required this.users})
      : super(key: key);

  @override
  State<HomeTopCard> createState() => _HomeTopCardState();
}

class _HomeTopCardState extends State<HomeTopCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  // late AnimationController _scaleController;
  late Animation<double> textOpacityAnimation;
  late Animation<double> cardTranslateAnimation;
  late Animation<num> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    print('4444:${textOpacityAnimation.value}');
    final isHaveUser = widget.users.isNotEmpty;
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
                  count: widget.count,
                  handleHiBtnClick: widget.handleHiBtnClick,
                ),
              ),
              const SizedBox(width: 7.0),
              Expanded(
                child: UserCard(
                  user: widget.users[1],
                  isWhite: true,
                  count: widget.count,
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
            const SizedBox(
              height: 410,
            ),
            mainTop2UserContent,
            Positioned(
                top: 367,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.amber,
                  child: Opacity(
                    opacity: textOpacityAnimation.value,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getTryBoost(context),
                      ],
                    ),
                  ),
                )),
            Positioned(
              top: cardTranslateAnimation.value * 43 + 267,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
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
                      children: [
                        Transform.scale(
                          scale: 1 * 1.2,
                          child: Container(
                            padding: const EdgeInsets.only(left: 16, right: 8),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage("images/avatar.png"),
                            ),
                          ),
                        ),
                        const Text('Your profiles is in boost'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // mainTop2UserContent,
          ],
        ),
      ],
    );

    return isHaveUser ? content : Container();
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
    // _controller.reset();
    _controller.forward();
    // _scaleController.forward();
    // _scaleController.addStatusListener((status) {
    //   // 循环往复
    //   if (status == AnimationStatus.completed) {
    //     _scaleController.forward();
    //   }
    // });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(
        microseconds: textAndNavAllTime.toInt(),
      ),
      vsync: this,
    );
    // _scaleController = AnimationController(
    //   duration: Duration(
    //     microseconds: avatarAnimationAllTime.toInt(),
    //   ),
    //   vsync: this,
    // );
    // scaleAnimation = TweenSequence(
    //   [
    //     TweenSequenceItem(
    //         tween: ConstantTween<num>(1 / 1.2), weight: avatarAnimationTime),
    //     TweenSequenceItem(
    //         tween: ConstantTween<num>(1 / 1.2), weight: avatarAnimationGapTime),
    //     TweenSequenceItem(
    //         tween: ConstantTween<num>(1), weight: avatarAnimationTime),
    //     TweenSequenceItem(
    //         tween: ConstantTween<num>(1), weight: avatarAnimationGapTime),
    //   ],
    // ).animate(_scaleController);
    textOpacityAnimation = TweenSequence([
      // 文本消失
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.0),
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
      // scaleAnimation
    ]) {
      animation.addListener(() {
        setState(() {});
      });
    }
  }
}
