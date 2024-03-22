import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/components/card_content/card_content.dart';

class ForYouContent extends StatefulWidget {
  const ForYouContent({super.key});

  @override
  State<ForYouContent> createState() => _ForYouContentState();
}

class _ForYouContentState extends State<ForYouContent>
    with TickerProviderStateMixin {
  late PageController _pageViewController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        PageView(
          controller: _pageViewController,
          children:
              List.generate(20, (index) => CardContent(index: index)).toList(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  void handleCheckNextCard() {
    _pageViewController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }
}
