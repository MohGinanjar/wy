import 'package:flutter/material.dart';
import 'package:wy/models/materialmenu.dart';

class MenuAssets with ChangeNotifier {
  List<AssetMenu> _allmenu = [
    AssetMenu("home", "assets/images/home.svg"),
    AssetMenu("office", "assets/images/office.svg"),
    AssetMenu("town", "assets/images/town.svg"),
    AssetMenu("ontheway", "assets/images/ontheway.svg"),
    
  ];

  List<AssetMenu> get allmenus {
    return [..._allmenu];
  }
}
