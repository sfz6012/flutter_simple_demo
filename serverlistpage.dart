import 'package:flutter/material.dart';

class ServerListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ServerListPageState();
  }
}

class ServerListPageState extends State<ServerListPage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Color(0xFFFFFFFF),
      child: new Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color(0x1A000000),
            ),
          ),
          new Container(
//            decoration: BoxDecoration(
//              boxShadow: <BoxShadow>[
//                new BoxShadow(color: Color(0x1A000000), blurRadius: 10)
//              ],
//              color: Color(0xFFFDFDFD),
//            ),
            constraints: BoxConstraints.expand(height: 360),
            child: new ListView.builder(
                itemCount: 18,
                itemBuilder: (context, index) {
                  return buildItem(index);
                }),
          )
        ],
      ),
    );
  }

  Widget buildItem(int index) {
    if(index == 17) {
      return null;
    }
    else if (index.isOdd) {
      return new Divider();
    } else
      return new Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        constraints: BoxConstraints.expand(height: 80),
        alignment: Alignment.center,
        child: new Row(
          children: <Widget>[
            Image.asset(
              'assets/icon_server_ip.png',
              width: 20,
              height: 20,
            ),
            new Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Automatic',
                style: TextStyle(
                    color: Color(0xFF011F3F),
                    fontSize: 16,
                    decoration: TextDecoration.none),
              ),
            ),
            Expanded(
                child: new Container(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/icon_server_ip.png',
                width: 20,
                height: 20,
              ),
            ))
          ],
        ),
      );
  }
}
