import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/app/utils/get_date_time.dart';
import 'package:timetable_ugrasu/app/utils/utils.dart';
import 'package:timetable_ugrasu/features/auth/domain/entities/user_entity/user_entity.dart';
import 'package:timetable_ugrasu/features/auth/ui/welcome_screen.dart';
import 'package:timetable_ugrasu/features/timetable/ui/timetable_screen.dart';
import '../../features/auth/ui/components/auth_builder.dart';
import 'app_loaded.dart';
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
        isAuthorized: (context, value,child) => Utils.rootToTimetable(value)? TimetableScreen(toDate: UtilsDate.getTodate(), fromDate: UtilsDate.getFromdate(), searchEntity: Utils.getTimetableEntity((value as UserEntity).idTimetableEntity??0 )):const MainScreen());
  }
}
