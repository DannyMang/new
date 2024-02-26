import 'package:flutter/material.dart';
import '../presentation/hinged_screen/hinged_screen.dart';

class AppRoutes {
  static const String hingedScreen = '/hinged_screen';

  static Map<String, WidgetBuilder> routes = {
    hingedScreen: (context) => HingedScreen()
  };
}
