import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/widgets/content.dart';

class ForYouPage extends StatelessWidget {
  const ForYouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('For You'),
      ),
      body: const ForYouContent(),
    );
  }
}
