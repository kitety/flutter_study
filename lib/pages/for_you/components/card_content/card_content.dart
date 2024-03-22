import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/components/card_content/animate_bottom_btn.dart';

class CardContent extends StatefulWidget {
  int index;
  CardContent({Key? key, required this.index}) : super(key: key);

  @override
  _CardContentState createState() => _CardContentState();
}

class _CardContentState extends State<CardContent> {
  @override
  Widget build(BuildContext context) {
    const likeImage = AssetImage('images/like_btn.png');
    const chatImage = AssetImage('images/chat.png');
    return Stack(
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
        const Positioned(
          bottom: 20,
          right: 20,
          child: Row(
            children: [
              AnimateBottomBtn(
                  child: Image(image: chatImage, width: 50, height: 50)),
              SizedBox(
                width: 20,
              ),
              AnimateBottomBtn(
                  child: Image(image: likeImage, width: 50, height: 50))
            ],
          ),
        )
      ],
    );
  }
}
