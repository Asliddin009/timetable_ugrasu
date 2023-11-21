import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/app/ui/app_loaded.dart';
import 'package:timetable_ugrasu/app/utils/utils.dart';
import 'package:timetable_ugrasu/features/main_screen/ui/main_screen.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/timetable_bloc/timetable_cubit.dart';
import '../../../app/const/color_const.dart';
import '../../../app/utils/get_date_time.dart';
import 'components/bottom_bar_timetable.dart';
import 'components/container_day_lessons.dart';

// ignore: must_be_immutable
class TimetableScreen extends StatefulWidget {
  //либо группа либо препод либо аудитория
  TimetableScreen({
    super.key,
    required this.toDate,
    required this.fromDate,
    required this.searchEntity,
  });

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

  //Title для Botttom Bar
  late String leftWeekTitle;
  late String weekTitle;
  late String RightWeekTitle;

  @override
  void initState() {
    super.initState();
    leftWeekTitle = UtilsDate.getLabelForTimetable(UtilsDate.convertStringToDateTime(widget.fromDate), UtilsDate.convertStringToDateTime(widget.toDate), false);
    weekTitle =
        "${UtilsDate.convertStringToDateTime(widget.fromDate).day}-${UtilsDate.convertStringToDateTime(widget.toDate).day}\n${UtilsDate.getMonthName(UtilsDate.convertStringToDateTime(widget.toDate).month).substring(0, 3)}";
    RightWeekTitle = UtilsDate.getLabelForTimetable(
        UtilsDate.convertStringToDateTime(widget.fromDate),
        UtilsDate.convertStringToDateTime(widget.toDate),
        true);
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
                actions: [
                  IconButton(onPressed: (){
                    context
                        .read<TimetableCubit>()
                        .getTimetable(id, widget.fromDate, widget.toDate);
                  }, icon: const Icon(Icons.texture_sharp))
                ],
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
              bottomNavigationBar: SafeArea(
                child: Container(
                  height: MediaQuery.of(context).size.height / 15,
                  color: ConstColor.DARK_APP_TIMETABLE_COLOR,
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainScreen()));
                          },
                          child: const Icon(
                            Icons.home,
                            color: Colors.white,
                          )),
                      TextButton(
                          onPressed: () {showSearch(context: context, delegate: AppSearchDelegate());},
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                      TextButton(onPressed: () {
                        widget.toDate=  UtilsDate.convertDateTimeToString(UtilsDate.addDay(UtilsDate.convertStringToDateTime(widget.toDate), -7));
                        widget.fromDate=  UtilsDate.convertDateTimeToString(UtilsDate.addDay(UtilsDate.convertStringToDateTime(widget.fromDate), -7));
                        leftWeekTitle = UtilsDate.getLabelForTimetable(UtilsDate.convertStringToDateTime(widget.fromDate), UtilsDate.convertStringToDateTime(widget.toDate), false);
                        weekTitle =
                        "${UtilsDate.convertStringToDateTime(widget.fromDate).day}-${UtilsDate.convertStringToDateTime(widget.toDate).day}\n${UtilsDate.getMonthName(UtilsDate.convertStringToDateTime(widget.toDate).month).substring(0, 3)}";
                        RightWeekTitle = UtilsDate.getLabelForTimetable(
                            UtilsDate.convertStringToDateTime(widget.fromDate),
                            UtilsDate.convertStringToDateTime(widget.toDate),
                            true);
                        context
                            .read<TimetableCubit>()
                            .getTimetable(id, widget.fromDate, widget.toDate);
                      }, child: Text(leftWeekTitle,style: const TextStyle(color: Colors.white30),)),
                      TextButton(onPressed: () {}, child: Text(weekTitle,style: const TextStyle(color: Colors.white),)),
                      TextButton(onPressed: () {
                        widget.toDate=  UtilsDate.convertDateTimeToString(UtilsDate.addDay(UtilsDate.convertStringToDateTime(widget.toDate), 7));
                        widget.fromDate=  UtilsDate.convertDateTimeToString(UtilsDate.addDay(UtilsDate.convertStringToDateTime(widget.fromDate), 7));
                        leftWeekTitle = UtilsDate.getLabelForTimetable(UtilsDate.convertStringToDateTime(widget.fromDate), UtilsDate.convertStringToDateTime(widget.toDate), false);
                        weekTitle =
                        "${UtilsDate.convertStringToDateTime(widget.fromDate).day}-${UtilsDate.convertStringToDateTime(widget.toDate).day}\n${UtilsDate.getMonthName(UtilsDate.convertStringToDateTime(widget.toDate).month).substring(0, 3)}";
                        RightWeekTitle = UtilsDate.getLabelForTimetable(
                            UtilsDate.convertStringToDateTime(widget.fromDate),
                            UtilsDate.convertStringToDateTime(widget.toDate),
                            true);
                        context
                            .read<TimetableCubit>()
                            .getTimetable(id, widget.fromDate, widget.toDate);

                      }, child: Text(RightWeekTitle,style: const TextStyle(color: Colors.white30),)),
                    ],
                  ),
                ),
              ),
            );
          }
        },
        listener: (context, state) {});
  }
}
