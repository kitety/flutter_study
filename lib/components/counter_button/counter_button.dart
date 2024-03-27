import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({super.key});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const SizedBox(
            width: 24,
            height: 24,
            child: Stack(
              children: [
                Positioned(top: -8, left: 0, child: Icon(Icons.minimize)),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 50,
          child: TextField(
            controller: _controller,
            textAlign: TextAlign.center,
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
