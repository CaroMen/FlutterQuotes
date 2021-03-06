import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:quotes/ui/common/quote_widget.dart';
import 'package:random_color/random_color.dart';

class QuoteScreen extends StatelessWidget {
  final Firestore _firestore = Firestore();
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 350, height: 660);
    return Scaffold(
      body: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: StreamBuilder(
          stream: _firestore.collection('stories').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return _LoadingIndicator();
            return PageView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                final document = snapshot.data.documents[index];
                return QuoteWidget(
                  backgroundColor: _randomColor.randomColor(
                      colorBrightness: ColorBrightness.dark),
                  quote: document['quote'],
                  author: document['author'],
                );
              },
              controller: PageController(
                viewportFraction: 0.8,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
