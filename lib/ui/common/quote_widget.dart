import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, author;

  const QuoteWidget({Key key, this.backgroundColor, this.quote, this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 350, height: 660);

    return Container(
        color: backgroundColor,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/quote_img.png',
              width: ScreenUtil().setWidth(70),
              height: ScreenUtil().setHeight(70),
            ),
            Text(
              quote, style: ,
            )
          ],
        ));
  }
}
