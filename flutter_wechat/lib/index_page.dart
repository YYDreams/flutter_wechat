import 'package:flutter/material.dart';
import 'package:flutter_wechat/pages/chat_page.dart';
import 'package:flutter_wechat/pages/contacts_page.dart';
import 'package:flutter_wechat/pages/discover_page.dart';
import 'package:flutter_wechat/pages/mine_page.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}
class _IndexPageState extends State<IndexPage> {

final _defautColor = Color(0xFF999999);
final _selectColor = Color(0xFF46c01b);
final PageController _controller = PageController(
   initialPage: 0,
);
int _currentIndex = 0; //记录当前选中的index

  //设置底部tabBar
  _setupTabBar(String tabBarTitle, String icon,int index){

   return  BottomNavigationBarItem(
      icon: Image.asset("images/"+ icon + ".png",color: _defautColor,width: 32,height: 28,),
      activeIcon: Image.asset("images/" + icon+ "_selected.png",color: _selectColor,width: 32,height: 28,),
      title: Text(tabBarTitle, style:TextStyle(
             color: (_currentIndex != index )? _defautColor : _selectColor,
           )),
      );
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: PageView(
        controller: _controller,
        children: <Widget>[
          ChatPage(),
          ContactsPage(),
          DiscoverPage(),
          MinePage(),

        ],
         //从来不滚动 （即不左右滚动）
         physics: NeverScrollableScrollPhysics(),

      ),
       bottomNavigationBar: new BottomNavigationBar(
         items: [
           _setupTabBar("微信", "tabbar_mainframe", 0),
           _setupTabBar("通讯录", "tabbar_contacts", 1),
           _setupTabBar("发现", "tabbar_discover", 2),
           _setupTabBar("我", "tabbar_me",3),
         ],
       type: BottomNavigationBarType.fixed,//图片和文字都显示
       currentIndex: _currentIndex, 
       onTap: ((index){
         _controller.jumpToPage(index);// 更改控制的当前PageView中显示的页面
         setState(() {
           _currentIndex = index;
         });
         print(index);
       }),
    ));
  }
}
