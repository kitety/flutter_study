// 字体通用

import 'package:flutter/material.dart';

// 字体颜色
const Color Black_444 = Color(0xFF444444);
const Color Bright_F1 = Color(0xFFF1F1F1);
const Color Dark_777 = Color(0xFF777777);
const Color Gray_BD = Color(0xFFBDBDBD);
const Color Light_D8 = Color(0xFFD8D8D8);
const Color MidGray_A1 = Color(0xFFA1A1A1);
const Color ThemeBlu_63D6FA = Color(0xFF63D6FA);
const Color ThemeOrg_FFA164 = Color(0xFFFFA164);
const Color ThemeRed_FF646B = Color(0xFFFF646B);
const Color Warning_D2443F = Color(0xFFD2443F);
const Color White_FFF = Color(0xFFFFFFFF);

const TextStyle _Bold_Text =
    TextStyle(fontWeight: FontWeight.w700, color: Color(0xFF444444));
const TextStyle _DemiBold_Text =
    TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF444444));
const TextStyle _Medium_Text =
    TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF444444));

// Medium 500
final TextStyle BodySentence_12 = _Medium_Text.copyWith(fontSize: 12);
final TextStyle BodySentence_14 = _Medium_Text.copyWith(fontSize: 14);
final TextStyle BodySentence_16 = _Medium_Text.copyWith(fontSize: 16);
// DemiBold 600
final TextStyle BodyText_14 = _DemiBold_Text.copyWith(fontSize: 14);
final TextStyle BodyText_16 = _DemiBold_Text.copyWith(fontSize: 16);
final TextStyle BodyText_18 = _DemiBold_Text.copyWith(fontSize: 18);
// Bold 700
final TextStyle GroupTitle_14 = _Bold_Text.copyWith(fontSize: 14);
final TextStyle GroupTitle_16 = _Bold_Text.copyWith(fontSize: 16);
final TextStyle GroupTitle_18 = _Bold_Text.copyWith(fontSize: 18);
final TextStyle TitleText_14 = _Bold_Text.copyWith(fontSize: 14);
final TextStyle TitleText_16 = _Bold_Text.copyWith(fontSize: 16);
final TextStyle TitleText_18 = _Bold_Text.copyWith(fontSize: 18);
final TextStyle TitleText_20 = _Bold_Text.copyWith(fontSize: 20);
final TextStyle TitleText_22 = _Bold_Text.copyWith(fontSize: 22);
final TextStyle TitleText_24 = _Bold_Text.copyWith(fontSize: 24);
final TextStyle TitleText_28 = _Bold_Text.copyWith(fontSize: 28);
