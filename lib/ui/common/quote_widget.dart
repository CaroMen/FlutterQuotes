import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:quotes/ui/styleguide/theme_text.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, author;

  const QuoteWidget(
      {Key key,
      @required this.backgroundColor,
      @required this.quote,
      @required this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50, bottom: 50, left: 15, right: 15),
        width: ScreenUtil.screenHeightDp,
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(16),
          vertical: ScreenUtil().setHeight(48),
        ),
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/quote_img.png',
              color: Colors.white.withOpacity(0.4),
              width: ScreenUtil().setWidth(70),
              height: ScreenUtil().setHeight(70),
            ),
            Expanded(
              child: Center(
                child: Text(
                  quote,
                  style: ThemeText.headline,
                ),
              ),
            ),
            Center(
              child: Text(
                author,
                style: ThemeText.subHead,
              ),
            ),
          ],
        ));
  }
}
