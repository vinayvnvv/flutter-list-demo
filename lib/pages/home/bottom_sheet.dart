import 'package:flutter/material.dart';
import './../../utils/icons.dart';
void settingModalBottomSheet(context, list) {
    List<Widget> bottomSheetLinks = List<Widget>();
    for (var item in list) {
      bottomSheetLinks.add(
        new ListTile(
            leading: IconButton(
              icon: new Icon(new CustomIcons().getIcon(item['icon'])),
              tooltip: item['tooltip'],
            ),
            title: new Text(item['tooltip']),
            onTap: () => {}          
          )
      );
    }
    print(bottomSheetLinks.length);
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            child: new Wrap(
            alignment: WrapAlignment.center,
            children: bottomSheetLinks
          ),
          );
      }
    );
}
