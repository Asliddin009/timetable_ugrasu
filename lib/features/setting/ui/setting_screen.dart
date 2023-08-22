import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/init_di.dart';
import '../../auth/domain/auth_state/auth_cubit.dart';
import '../../setting/domain/cubit/setting_cubit.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Выбор группы"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Тестирование",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ElevatedButton(
              onPressed: () {
                locator.get<AuthCubit>().logout();
              },
              child: const Text("Посмотреть превью снова"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SettingCubit>().swapTheme();
              },
              child: const Text("поменять тему"),
            ),
          ],
        ),
      ),
    );

  }
}
