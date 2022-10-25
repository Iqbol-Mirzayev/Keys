import 'package:flutter/cupertino.dart';

class PageKeys {
  static final PageKeys _instance = PageKeys.init();
  static PageKeys get instance => _instance;

  PageKeys.init();

  final profileKey = const PageStorageKey('profileKey');
  final homeKey = const PageStorageKey('homeKey');
  
}
