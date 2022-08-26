import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:mx_companion_v2/controllers/auth_controller.dart';
import 'package:mx_companion_v2/controllers/zoom_drawer.dart';
import '../../config/themes/app_dark_theme.dart';
import '../../config/themes/app_light_theme.dart';
import '../../config/themes/ui_parameters.dart';
import 'main_screen.dart';
import 'menu_screen.dart';

class HomeScreen extends GetView<MyZoomDrawerController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: UIParameters.isDarkMode()
            ? primaryDarkColor1
            : primaryLightColor1,
        systemNavigationBarIconBrightness: UIParameters.isDarkMode()
            ? Brightness.light
            : Brightness.dark,
        statusBarIconBrightness: UIParameters.isDarkMode()
            ? Brightness.light
            : Brightness.dark,
        statusBarColor: UIParameters.isDarkMode()
            ? primaryDarkColor1
            : primaryLightColor1,
      ),
    );

    return Scaffold(
      body: GetBuilder<MyZoomDrawerController>(builder: (_){
        return const MainScreen();
      }),
    );
  }
}
