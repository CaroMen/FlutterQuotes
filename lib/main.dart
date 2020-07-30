import 'package:flutter/material.dart';
import 'package:quotes/ui/common/quote_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: QuoteWidget(
          quote: 'Hello',
          author: 'Me',
          backgroundColor: Colors.redAccent,
        ),
      ),
    );
  }
}
