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


// void main() => runApp(
//   MaterialApp(
// debugShowCheckedModeBanner: false,
// title: "wechat",
// theme: defalutTheme,
// //设置路由
// routes: <String,WidgetBuilder>{
//   "app":(BuildContext content) =>new IndexPage(), //入口
//   "/friends":(_) => new WebviewScaffold(url: "https://weixin.qq.com/",
//   // appBar: new AppBar(
//   //   title: Text("微信朋友圈"),
//   // ),
//   withZoom: true, //缩放
//   withLocalStorage: true, //本地储存
  
  
//   ),
//   // "search":(BuildContext contnet) => new Search();
// },
// home: new IndexPage(),


//  ));

