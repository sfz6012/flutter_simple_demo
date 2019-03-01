import 'package:flutter/material.dart';

class FlutterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSelection = new Container(
      padding: EdgeInsets.all(32.0),
      color: Color(0xFFFFFFFF),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.only(bottom: 8),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                    color: Colors.grey[500],
                    decoration: TextDecoration.none,
                    fontSize: 14),
              )
            ],
          )),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text(
            '41',
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 14,
                color: Colors.black12),
          )
        ],
      ),
    );

    Widget bottomSelection = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildBottomColumn(context, Icons.call, 'CALL'),
        buildBottomColumn(context, Icons.near_me, 'NEAR_ME'),
        buildBottomColumn(context, Icons.share, 'SHARE')
      ],
    );

    Widget textSection = new Container(
      padding: EdgeInsets.all(32),
      child: Text(
        '''
         Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
      ''',
        softWrap: true,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 12,
            color: Colors.black54),
      ),
    );
    return new Container(
      child: new Column(
        children: <Widget>[titleSelection, bottomSelection, textSection],
      ),
      color: Color(0xFFFFFFFF),
    );
  }

  Column buildBottomColumn(BuildContext context, IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        new Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
                decoration: TextDecoration.none),
          ),
        )
      ],
    );
  }
}
