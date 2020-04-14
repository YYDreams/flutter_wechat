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
            showMenu(context: context, position: RelativeRect.fromLTRB(500.0, 90.0, 10.0, 0.0), 
            items: <PopupMenuEntry>[
              _popupMenuItem("发起群聊",imagePath: 'images/barbuttonicon_add.png'),
              _popupMenuItem("添加朋友",imagePath: 'images/barbuttonicon_add.png'),
              _popupMenuItem("扫一扫",imagePath: 'images/barbuttonicon_add.png'),
              _popupMenuItem("收付款",imagePath: 'images/barbuttonicon_add.png'),
            ],);

          },
          child: Image.asset("images/barbuttonicon_add.png",color: Colors.white,width: 25,height: 25,),

          ),
               //设置右边间距
          Padding(padding: const EdgeInsets.only(right:20)),

        ],
        ),
        
        body: Center(
        child:Text("微信聊天页面"),
        ),
      );
      
      }
        _popupMenuItem(String title,{String imagePath,IconData icon}){
        return PopupMenuItem(
          child: Row(
            children: <Widget>[
              imagePath != null ? 
              Image.asset(imagePath,width: 32,height: 32,): SizedBox(
                width: 32.0,height: 32.0,child: Icon(icon,color: Colors.white
                ),
                ),
                Container(
                padding: EdgeInsets.only(left:10.0),
                child: Text(title,style: TextStyle(
                  color:Colors.white),
                ),
              ),
            ],
          ),
        );
  }
  }


