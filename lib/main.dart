import 'package:flutter/material.dart';

import 'package:kilshi_app/router/route_constants.dart';
import 'package:kilshi_app/router/router.dart';
import 'package:kilshi_app/values/branding_color.dart';

void main() {
  runApp(kilshi_app());
}

class kilshi_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primarySwatch: brandingColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return MaterialApp(
      title: 'Kilshi',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      onGenerateRoute: AppRouter.OnGenerateRoute,
      initialRoute: singInRoute,
    );
  }
}
