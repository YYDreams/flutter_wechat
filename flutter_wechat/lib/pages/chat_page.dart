import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//定义枚举 
enum ItemType {
  ItemTypeGroupChat, //发起群聊
  ItemTypeAddFriend, //添加朋友
  ItemTypeQrCode, //扫一扫
  ItemTypeCollectionPayment //收付款
  }
class ChatPage extends StatelessWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

     return  Scaffold(
        appBar: AppBar(title: Text('微信'),
        actions: <Widget>[
          GestureDetector( //添加手势
          onTap: (){
            print("点我");

          },
          child: Image.asset("images/barbuttonicon_add.png",color: Colors.white,width: 40,height: 40,),

          )
        ],
        ),
        
        body: Center(
        child:Text("微信聊天页面"),
        ),
      );
  }
}