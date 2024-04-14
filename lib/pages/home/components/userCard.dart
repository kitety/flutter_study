import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/model/user.dart';
import 'package:flutter_study/pages/home/widgets/homeContent.dart';
import 'package:flutter_study/utils/unit.dart';

class UserCard extends StatelessWidget {
  final bool isWhite;
  final void Function(User user) handleHiBtnClick;
  final User user;

  const UserCard({
    Key? key,
    this.isWhite = false,
    required this.user,
    required this.handleHiBtnClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const avatarImage = AssetImage('images/avatar.png');
    const likeImage = AssetImage('images/like_btn.png');
    const chatImage = AssetImage('images/chat.png');
    final distance = formatDistance(0.24);

    return Column(
      children: [
        AspectRatio(
          aspectRatio: HomeContent.cardWHRatio,
          child: Stack(
            children: [
              const Positioned.fill(
                child: Image(
                  image: avatarImage,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(image: likeImage, width: 40, height: 40),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        handleHiBtnClick(user);
                      },
                      child:
                          const Image(image: chatImage, width: 40, height: 40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Laura Sofía Ureña',
                style: BodyText_14.copyWith(
                  color: isWhite ? White_FFF : Black_444,
                ),
              ),
              Text(
                distance,
                style: BodySentence_12.copyWith(
                  color: isWhite ? White_FFF : Gray_BD,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
