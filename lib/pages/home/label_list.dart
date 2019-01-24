import 'package:flutter/material.dart';
List<Widget> createChildrenTexts(list) {
  List<Widget> childrenTexts = List<Widget>();
  for (var name in list) {
    var value = name['value'];
    if(!(name['value'] is String)) {
      var s = "";
      for (var _i in value) {
        s = s + " " + _i;
      }
      value = s;
    }
    childrenTexts.add(
        new Container(
          margin: EdgeInsets.only(
            top: 8.0,
            bottom: 8.0
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: 
                  Text(name['label'],
                  style: TextStyle(
                    color: Colors.grey[500]
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: 
                  Text(value,
                    style: TextStyle(
                      color: Colors.grey[900]
                    ),
                  ),
              )
            ],
          ),
        )
          
      );
  }
  return childrenTexts;
}