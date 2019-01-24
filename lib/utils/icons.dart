import 'package:flutter/material.dart';
class CustomIcons {
  IconData getIcon(name) {
    IconData icon;
    switch(name) {
      case 'fa-chevron-circle-right': 
        icon = const IconData(0xf138, fontFamily: 'FontAwesome');
        break;
      case 'fa-cloud-upload': 
        icon = const IconData(0xf382, fontFamily: 'FontAwesome');
        break;
      case 'fa-history': 
        icon = const IconData(0xf1da, fontFamily: 'FontAwesome');
        break;
      case 'fa-tachometer': 
        icon = const IconData(0xf3fd, fontFamily: 'FontAwesome');
        break;
      case 'fa-terminal': 
        icon = const IconData(0xf120, fontFamily: 'FontAwesome');
        break;
      case 'fa-sitemap': 
        icon = const IconData(0xf0e8, fontFamily: 'FontAwesome');
        break;
      case 'fa-info-circle': 
        icon = const IconData(0xf05a, fontFamily: 'FontAwesome');
        break;
      case 'fa-download': 
        icon = const IconData(0xf019, fontFamily: 'FontAwesome');
        break;
      case 'fa-users': 
        icon = const IconData(0xf0c0, fontFamily: 'FontAwesome');
        break;
      case 'arrows-h': 
        icon = const IconData(0xf337, fontFamily: 'FontAwesome');
        break;
    }
    return icon;
  }
}

