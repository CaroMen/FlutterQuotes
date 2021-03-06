import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  static final headline = GoogleFonts.dosis(
    textStyle: _headline.copyWith(
      fontSize: ScreenUtil().setSp(12),
    ),
  );

  static final subHead = GoogleFonts.dosis(
    textStyle: _subHead.copyWith(
      fontSize: ScreenUtil().setSp(10),
    ),
  );

  static const _headline = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
  );

  static const _subHead = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}
