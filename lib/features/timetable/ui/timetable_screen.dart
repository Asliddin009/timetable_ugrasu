import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/app/ui/app_loaded.dart';
import 'package:timetable_ugrasu/app/utils/utils.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/timetable_bloc/timetable_cubit.dart';
import '../../../app/utils/get_date_time.dart';
import 'components/container_day_lessons.dart';

// ignore: must_be_immutable
class TimetableScreen extends StatefulWidget {
  //либо группа либо препод либо аудитория
  TimetableScreen(
      {super.key,
      required this.toDate,
      required this.fromDate,
      required this.searchEntity});

  dynamic searchEntity;
  String fromDate;
  String toDate;

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
    super.initState();
    id = Utils.getIdFromEntity(widget.searchEntity);
    context
        .read<TimetableCubit>()
        .getTimetable(id, widget.fromDate, widget.toDate);
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
            titleText = Utils.getTitleFromSearchEntity(widget.searchEntity);
            return Scaffold(
              appBar: AppBar(
                title: Text(titleText),
              ),
              body: ListView.separated(
                itemBuilder: (BuildContext context, int index) =>
                    TimetableContainer(
                        dateTimeNow:
                            UtilsDate.addDay(state.lessonsWeek.fromdate, index),
                        listLessons: Utils.getLessonsOnDayOfWeek(
                            state.lessonsWeek.list, index + 1)),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 10,
                ),
                itemCount: 6,
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: 1,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: "1"),
                  BottomNavigationBarItem(icon: Icon(Icons.search), label: "2"),
                  BottomNavigationBarItem(icon: Text("11-17\nсен"), label: ""),
                  BottomNavigationBarItem(icon: Text("18-24"), label: "сен"),
                  BottomNavigationBarItem(icon: Text("25-01"), label: "окт"),
                ],
              ),
            );
          }
        },
        listener: (context, state) {});
  }
}
