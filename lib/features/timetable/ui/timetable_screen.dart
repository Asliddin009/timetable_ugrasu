import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/app/ui/app_loaded.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/timetable_bloc/timetable_cubit.dart';
class TimetableScreen extends StatefulWidget {
  int groupOid;
  String fromDate;
  String toDate;
  TimetableScreen({super.key,required this.toDate,required this.fromDate, required this.groupOid});

  @override
  State<TimetableScreen> createState() => _TimetableScreenState();
}

class _TimetableScreenState extends State<TimetableScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    context.read<TimetableCubit>().getTimetable(widget.groupOid, widget.fromDate, widget.toDate);
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
    return BlocConsumer<TimetableCubit,TimetableState>(builder: (context, state){
        if( state.asyncSnapshot==const AsyncSnapshot.waiting()){
          return const AppLoader();
        }
        else{
          return const Scaffold();
        }
    }, listener: (context, state){});
  }
}
