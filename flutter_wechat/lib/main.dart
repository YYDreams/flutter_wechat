import 'package:flutter/material.dart';

import './app.dart';
import 'loading.dart';
// import 'package:';
// import 'package:';
// void main() => runApp(MyApp());


void main() => runApp(
  MaterialApp(
debugShowCheckedModeBanner: false,
title: "wechat",
theme: defalutTheme,
//设置路由
routes: <String,WidgetBuilder>{
  // "app":(BuildContext content) =>new App(),
  // "/friends":(_) => new We


}


 ));

final ThemeData defalutTheme = new ThemeData(
primaryColor: Color(0xff303030),
scaffoldBackgroundColor: Color(0xFFebebeb),
cardColor: Color(0xff393a3f),


);