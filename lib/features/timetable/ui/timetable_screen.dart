import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/app/ui/app_loaded.dart';
import 'package:timetable_ugrasu/app/ui/utils/utils.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/timetable_bloc/timetable_cubit.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/group_entity/group_entity.dart';
import 'package:timetable_ugrasu/features/timetable/ui/components/timetable_tile.dart';

import '../../../app/ui/utils/get_date_time.dart';

class TimetableScreen extends StatefulWidget {
  //либо группа либо препод либо аудитория
  dynamic searchEntity;
  String fromDate;
  String toDate;

  TimetableScreen(
      {super.key,
      required this.toDate,
      required this.fromDate,
      required this.searchEntity});

  @override
  State<TimetableScreen> createState() => _TimetableScreenState();
}

class _TimetableScreenState extends State<TimetableScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  int id = 0;
  String titleText = "";

  @override
  void initState() {
    var (id, titleText) =
        Utils.getIdAndTitleFromSearchEntity(widget.searchEntity);
    context
        .read<TimetableCubit>()
        .getTimetable(id, widget.fromDate, widget.toDate);
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
    return BlocConsumer<TimetableCubit, TimetableState>(
        builder: (context, state) {
          if (state.asyncSnapshot == const AsyncSnapshot.waiting()) {
            return const AppLoader();
          } else {
            var (id, titleText) =
                Utils.getIdAndTitleFromSearchEntity(widget.searchEntity);
            return Scaffold(
              appBar: AppBar(
                title: Text(titleText),
              ),
              body: ListView.separated(itemBuilder: (BuildContext context, int index)=>
                  TimetableTile(
                      dateTimeNow:UtilsDate.addDay(state.lessonsWeek.fromdate, index),
                      listLessons: Utils.getLessonsOnDayOfWeek(state.lessonsWeek.list, index+1))
                  , separatorBuilder: (BuildContext context, int index)=>SizedBox(height: 10,), itemCount: 6,


                // children: [
                //   TimetableTile(
                //       dateTimeNow: state.lessonsWeek.fromdate,
                //       listLessons: Utils.getLessonsOnDayOfWeek(
                //           state.lessonsWeek.list, 1)),
                //   TimetableTile(
                //       dateTimeNow:
                //           UtilsDate.addDay(state.lessonsWeek.fromdate, 1),
                //       listLessons: Utils.getLessonsOnDayOfWeek(
                //           state.lessonsWeek.list, 2)),
                //
                // ],
              ),
            );
          }
        },
        listener: (context, state) {});
  }
}
