import 'package:flutter/material.dart';
import 'package:flutter_study/pages/for_you/widgets/content.dart';

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  _ForYouState createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
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
