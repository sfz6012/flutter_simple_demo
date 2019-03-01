import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Color(0xFFFFFFFF),
      child: new Column(
        children: <Widget>[
          new Container(
            margin:EdgeInsets.only(bottom: 30,top: 50),
            child:  Image.asset('assets/iv_splash.png',width: 200,height: 300,),
          ),

          new Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              '禁止接入国际互联网',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF011F3F),
                  decoration: TextDecoration.none),
            ),
          ),
          new Container(
            padding: EdgeInsets.only(bottom: 68, left: 55, right: 55),
            child: Text(
              '根据中国法律的规定（除香港、台湾），在接入国际互联网须进行有关部门批准，如果你没有批准接入，请停止使用此软件。',
              style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFF8B959A),
                  decoration: TextDecoration.none),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            constraints: new BoxConstraints.expand(width: 185, height: 37),
            decoration: BoxDecoration(
                color: Color(0xFF0094FC),
                borderRadius: BorderRadius.all(new Radius.circular(50.0))),
            child: Text(
              '我是非中国内地用户',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFFFFFFF),
                  decoration: TextDecoration.none),
            ),
          )
        ],
      ),
    );
  }
}
