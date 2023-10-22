import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/app/di/init_di.dart';
import 'package:timetable_ugrasu/app/utils/get_date_time.dart';
import 'package:timetable_ugrasu/features/auth/domain/auth_state/auth_cubit.dart';
import 'package:timetable_ugrasu/features/timetable/ui/timetable_screen.dart';

void dialogUpgradeMainId(BuildContext context, int id) {
  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AppDialogMainId(id);
    },
  );
}

class AppDialogMainId extends StatefulWidget {
  AppDialogMainId(this.id, {super.key});

  int id;

  @override
  State<AppDialogMainId> createState() => _AppDialogMainIdState();
}

class _AppDialogMainIdState extends State<AppDialogMainId>
    with SingleTickerProviderStateMixin {
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
    return AlertDialog(
      title: const Text('Это ваша основная группа?'),
      actions: <Widget>[
        TextButton(
          child: const Text('Да'),
          onPressed: () {
            locator.get<AuthCubit>().emitMainGroup(widget.id);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TimetableScreen(
                        toDate: UtilsDate.getTodate(),
                        fromDate: UtilsDate.getFromdate(),
                        searchEntity: widget.id)));
            },
        ),
        TextButton(
          child: const Text('Нет'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TimetableScreen(
                        toDate: UtilsDate.getTodate(),
                        fromDate: UtilsDate.getFromdate(),
                        searchEntity: widget.id))); // Dismiss alert dialog
          },
        ),
      ],
    );
  }
}
