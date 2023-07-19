import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/features/auth/ui/welcome_screen.dart';
import '../../features/auth/ui/components/auth_builder.dart';
import 'app_loaded.dart';
import 'error_screen.dart';
import 'main_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
        isWaiting: (context) => const AppLoader(),
        isNotAuthorized: (context) => const WelcomeScreen(),
        isAuthorized: (context, value,child) => const MainScreen());
  }
}
