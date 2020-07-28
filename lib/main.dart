import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mountains',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mountains'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var images = [
    'https://images.pexels.com/photos/910307/pexels-photo-910307.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1666021/pexels-photo-1666021.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1517162/pexels-photo-1517162.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1526713/pexels-photo-1526713.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2178175/pexels-photo-2178175.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text('Mountains'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        elevation: 0.0,
      ),
      body: Container(
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(images[index], fit: BoxFit.cover);
          },
          itemCount: images.length,
          viewportFraction: 0.8,
          scale: 0.9,
        ),
        margin: EdgeInsets.only(top: 50, bottom: 50, right: 30),
      ),
    );
  }
}
