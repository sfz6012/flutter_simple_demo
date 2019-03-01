import 'package:flutter/material.dart';

class ConnectPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ConnectPageState();
  }
}

class ConnectPageState extends State<ConnectPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        leading: Image.asset(
          'assets/main_left_icon.png',
          width: 18,
          height: 14,
        ),
        centerTitle: true,
        title: Text(
          'VPN',
          style: TextStyle(
            color: Color(0xFF011F3F),
            fontSize: 18,
          ),
        ),
      ),
      body: buildHomeBody(context),
    );
  }

  Widget buildHomeBody(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.center,
            constraints: new BoxConstraints.expand(width: 140.0, height: 36.0),
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(new Radius.circular(30)),
              color: Color(0xFFFDFDFD),
              boxShadow: <BoxShadow>[
                new BoxShadow(
                    color: Color(0x1A000000),
                    offset: Offset(0, 5),
                    blurRadius: 10,
                    spreadRadius: 0)
              ],
            ),
            margin: EdgeInsets.only(top: 100),
            child: Text(
              'Connected',
              style: TextStyle(fontSize: 13, color: Color(0xFF8B959A)),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 30),
            child: Image.asset(
              'assets/icon_status.png',
              width: 180,
              height: 180,
            ),
          ),
          new Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFF0094FC),
                borderRadius: BorderRadius.all(new Radius.circular(30))),
            constraints: BoxConstraints.expand(width: 185, height: 38),
            margin: EdgeInsets.only(top: 30),
            child: Text(
              'CONNECT NOW',
              style: TextStyle(color: Color(0xFFFFFFFF)),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          new Container(
            decoration: BoxDecoration(boxShadow: <BoxShadow>[new BoxShadow(
              color: Color(0x1A000000),
              blurRadius: 10
            )],
            color: Color(0xFFFDFDFD)),
            height: 80,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New York, NY',
                  style: TextStyle(color: Color(0xFF011F3F), fontSize: 16),
                ),
                Image.asset('')
              ],
            ),

          )
        ],
      ),
    );
  }
}
