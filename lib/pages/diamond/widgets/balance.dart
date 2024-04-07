import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Balance',
          style: TitleText_16.copyWith(color: White_FFF),
        ),
        buildBalanceCountWidget(),
      ],
    );
  }

  EasyRichText buildBalanceCountWidget() {
    const String balanceCountStr = '80000 @DIAMOND@';
    return EasyRichText(
      balanceCountStr,
      patternList: [
        EasyRichTextPattern(
          targetString: '@DIAMOND@',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
