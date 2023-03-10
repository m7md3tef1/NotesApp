import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier
{
  bool isLight=true;

  changeTheme(){
    isLight =!isLight;
    notifyListeners();
  }

}