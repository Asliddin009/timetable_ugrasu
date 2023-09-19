import 'dart:io';

import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/features/auth/ui/welcome_screen.dart';
import '../../features/auth/ui/components/auth_builder.dart';
import 'app_loaded.dart';
import 'error_screen.dart';
import '../../features/main_screen/ui/main_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(kIsWeb){
      return const Scaffold(body: Center(child: Text("WEB"),),);
    }
    return AuthBuilder(
        isWaiting: (context) => const AppLoader(),
        isNotAuthorized: (context) => const WelcomeScreen(),
        isAuthorized: (context, value,child) => const MainScreen());
  }
}
