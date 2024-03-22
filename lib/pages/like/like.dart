import 'package:flutter/material.dart';

import 'componnets/diamond_rich_text.dart';

class Like extends StatefulWidget {
  const Like({Key? key}) : super(key: key);

  @override
  _LikeState createState() => _LikeState();

}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diamond Test'),
      ),
      body: Center(
        child: Container(
          child: const DiamondRichText(
            price: 100.0,
            count: 20,
          ),
        ),
      ),
    );
  }
}
