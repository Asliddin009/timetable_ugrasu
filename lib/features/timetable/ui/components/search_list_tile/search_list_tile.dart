import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/group_entity/group_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lecturer_entity/lecturer_entity.dart';
import 'dart:developer';
import 'package:timetable_ugrasu/features/timetable/domain/entity/auditorium_entity/auditorium_entity.dart';

import '../../../../../app/ui/utils/get_date_time.dart';
import '../../timetable_screen.dart';

class SearchListTile extends StatefulWidget {
  SearchListTile({super.key, required this.item, required this.indexOdd});

  bool indexOdd;
  dynamic item;

  @override
  State<SearchListTile> createState() => _SearchListTileState();
}

class _SearchListTileState extends State<SearchListTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int id = 0;
  String title = '';
  String subtitle = '';

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
    if (widget.item is AuditoriumEntity) {
      AuditoriumEntity item = widget.item as AuditoriumEntity;
       id = item.auditoriumOid;
       title = item.name;
       subtitle = item.building ?? " ";
    }
    if (widget.item is LecturerEntity) {
       LecturerEntity item = widget.item as LecturerEntity;
       id = item.lecturerOid;
       title = item.fio ;
       subtitle=item.email?? " ";
      //String subtitle=item." ";
    }
    if (widget.item is GroupEntity) {
      GroupEntity item = widget.item as GroupEntity;
       id = item.groupOid;
       title = item.name;
       subtitle = item.speciality ?? " ";
    }
    return ListTile(
      onTap: () {
        String fromDate = UtilsDate.getFromdate();
        String toDate = UtilsDate.getTodate();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TimetableScreen(
                    toDate: toDate,
                    fromDate: fromDate,
                    searchEntity: widget.item)));
      },
      tileColor: widget.indexOdd
          ? Theme.of(context).primaryColor
          : Theme.of(context).scaffoldBackgroundColor,
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
