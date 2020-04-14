import 'package:flutter/material.dart';
import 'dart:async';



class LoadingPage extends StatefulWidget {
  LoadingPage({Key key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  
  //初始化操作
  void initState() { 
    super.initState();
    new Future.delayed(Duration(seconds: 3),(){
      print("Flutter启动");


      // Navigator.push(context, route)

    });
  }

  Widget build(BuildContext context) {
    return Container(
       child: Image.asset('images/loading.png'),
    );
  }
}
