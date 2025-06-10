import 'package:flutter/material.dart';
import 'package:open_fashion/auth/login_page.dart';
import 'package:open_fashion/auth/register_page.dart';
import 'package:open_fashion/pages/grid_view_page.dart';
import 'package:open_fashion/pages/main_page.dart';
import 'package:open_fashion/theme_data/theme_settings.dart';
import 'package:open_fashion/pages/drawer_page.dart';
import 'package:open_fashion/widgets/header_widget.dart';
import 'package:open_fashion/widgets/float_action_button_widget.dart';
import 'package:open_fashion/widgets/bottom_navigator_widget.dart';
import 'package:open_fashion/pages/home_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  //Conecta ao firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Fashion',
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.getLight(),
      // home: const Main(),
      home: LoginScreen(),
    );
  }
}
