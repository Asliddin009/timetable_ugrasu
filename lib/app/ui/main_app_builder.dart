import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/app/di/init_di.dart';
import 'package:timetable_ugrasu/app/domain/app_builder.dart';
import 'package:timetable_ugrasu/app/ui/root_screen.dart';
import 'package:timetable_ugrasu/app/ui/theme/dark_theme.dart';
import 'package:timetable_ugrasu/app/ui/theme/light_theme.dart';
import 'package:timetable_ugrasu/features/setting/domain/cubit/setting_cubit.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/search_bloc/search_cubit.dart';

import '../../features/auth/domain/auth_state/auth_cubit.dart';
import '../../features/timetable/domain/bloc/timetable_bloc/timetable_cubit.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return _GlobalProviders(
      child: BlocConsumer<SettingCubit,SettingState>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state.themeMode,
            debugShowCheckedModeBanner: false,
            home: const RootScreen(),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}

class _GlobalProviders extends StatelessWidget {
  const _GlobalProviders({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator.get<AuthCubit>(),
        ),
        BlocProvider(
          create: (context) => locator.get<TimetableCubit>(),
        ),
        BlocProvider(
          create: (context) => locator.get<SettingCubit>(),
        ),
        BlocProvider(
          create: (context) => locator.get<SearchCubit>(),
        ),
      ],
      child: child,
    );
  }
}
