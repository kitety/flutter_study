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
    final cardList = List.generate(
      20,
      (index) => CardContent(index: index, handleNext: handleCheckNextCard),
    ).toList();
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        PageView(
          controller: _pageViewController,
          physics: const NeverScrollableScrollPhysics(),
          children: cardList,
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
