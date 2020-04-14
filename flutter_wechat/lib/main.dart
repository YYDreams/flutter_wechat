import 'package:flutter/material.dart';
import 'package:flutter_wechat/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  //设置默认数颜色值
  final ThemeData defalutTheme = new ThemeData(
    primaryColor: Color(0xff303030),
    scaffoldBackgroundColor: Color(0xFFebebeb),
    cardColor: Color(0xff393a3f),
);

    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 去除右上角的debug
      theme: defalutTheme,
      home: IndexPage(),
    );
  }
}