import 'package:flutter/material.dart';

import '../../../../common/constant.dart';

class RowActionWidget extends StatelessWidget {
  final String deleteText;

  const RowActionWidget({
    super.key,
    required this.deleteText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onDoubleTap: () {
          print('delete');
        },
        child: Container(
          color: const Color(0xFFC24E45),
          width: 110,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.delete,
                color: Colors.white,
                size: 24,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                deleteText,
                style: BodySentence_14.copyWith(
                  color: White_FFF,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
