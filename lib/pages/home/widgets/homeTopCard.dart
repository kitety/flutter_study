import 'package:flutter/material.dart';
import 'package:flutter_study/pages/home/components/userCard.dart';

class HomeTopCard extends StatelessWidget {
  final int count;
  final VoidCallback handleImgClick;
  const HomeTopCard(
      {Key? key, required this.count, required this.handleImgClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  isWhite: true,
                  count: count,
                  handleImgClick: handleImgClick,
                ),
              ),
              const SizedBox(width: 7.0),
              Expanded(
                child: UserCard(
                  isWhite: true,
                  count: count,
                  handleImgClick: handleImgClick,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
