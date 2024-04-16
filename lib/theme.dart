import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'theme.g.dart';

class Theme = _Theme with _$Theme;

abstract class _Theme with Store {
  @observable
  ThemeData theme = ThemeData.dark();

  @action
  changeTheme() {
    if (theme.brightness == Brightness.dark) {
      theme = ThemeData();
    } else {
      theme = ThemeData.dark();
    }
  }
}
