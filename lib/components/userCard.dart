import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final bool isWhite;
  final int count;
  final VoidCallback handleImgClick;

  const UserCard(
      {Key? key,
      this.isWhite = false,
      required this.count,
      required this.handleImgClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const avatarImage = AssetImage('images/avatar.png');
    const likeImage = AssetImage('images/like_btn.png');
    const chatImage = AssetImage('images/chat.png');

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
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
                        handleImgClick();
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
                style: TextStyle(
                    color: isWhite
                        ? Colors.white
                        : const Color.fromARGB(255, 68, 68, 68),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '2.4 km',
                style: TextStyle(
                  color: isWhite
                      ? Colors.white
                      : const Color.fromARGB(255, 189, 189, 189),
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
