import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study/utils/clamp.dart';

class CounterButton extends StatefulWidget {
  final int value;
  final ValueChanged<int> onChange;
  final int min;
  final int max;

  const CounterButton({
    super.key,
    required this.value,
    required this.onChange,
    this.min = -999999,
    this.max = 999999,
  });

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  late final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            int newValue = max(widget.value - 1, widget.min);
            widget.onChange(newValue);
          },
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
          width: 40,
          child: TextField(
            controller: _controller,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            onChanged: (value) {
              int newValue = int.tryParse(value) ?? 0;
              int clampVal = clampIntNum(newValue, widget.min, widget.max);
              widget.onChange(clampVal);
            },
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        IconButton(
            onPressed: () {
              int newValue = min(widget.value + 1, widget.max);
              widget.onChange(newValue);
            },
            icon: const Icon(Icons.add)),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant CounterButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != int.tryParse(_controller.text)) {
      _controller.text = widget.value.toString();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value.toString());
  }
}
