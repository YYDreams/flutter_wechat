import 'package:flutter/material.dart';



class ContactsPage extends StatelessWidget {
  const ContactsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('通讯录')),
        body: Center(
        child:Text("通讯录"),
        ),
      );
  }
}