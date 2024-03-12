import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  final  bool isWhite;

  const UserCard({Key? key, this.isWhite = false}) : super(key: key);

  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    const avatarImage = AssetImage('images/avatar.png');
    const likeImage = AssetImage('images/like_btn.png');
    const chatImage = AssetImage('images/chat.png');

    return SizedBox(
      child: Column(
        children: [
          const Stack(
            children: [
              Image(image: avatarImage, width: double.infinity),
              Positioned(
                bottom: 10.0,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: likeImage, width: 40, height: 40),
                    Image(image: chatImage, width: 40, height: 40),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Laura Sofía Ureña',
                  style: TextStyle(
                      color: widget.isWhite ? Colors.white :const Color.fromARGB(255, 68, 68, 68),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '2.4 km',
                  style: TextStyle(
                    color: widget.isWhite ? Colors.white :const Color.fromARGB(255, 189, 189, 189),
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
