import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/features/setting/domain/cubit/setting_cubit.dart';

import 'components/welcome_icon.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IllustrationFb5(
        url: context.read<SettingCubit>().state.themeMode==ThemeMode.dark?"assets/dark_theme/welcome_icon.png":"assets/light_theme/welcome_icon.png",
        size: Size(MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width),
      ),
    );
  }
}
