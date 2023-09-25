import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/group_entity/group_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lecturer_entity/lecturer_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/auditorium_entity/auditorium_entity.dart';

import '../../../../app/utils/get_date_time.dart';
import '../../../auth/domain/auth_state/auth_cubit.dart';
import '../timetable_screen.dart';

// ignore: must_be_immutable
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
  bool isLike=false;
  @override
  void initState() {
    if (widget.item is AuditoriumEntity) {
      AuditoriumEntity item = widget.item as AuditoriumEntity;
      id = item.auditoriumOid;
      title = item.name;
      isLike=item.isLikes;
      subtitle = item.building ?? " ";
    }
    if (widget.item is LecturerEntity) {
      LecturerEntity item = widget.item as LecturerEntity;
      id = item.lecturerOid;
      title = item.fio;

      isLike=item.isLikes;
      subtitle = item.email ?? " ";
      //String subtitle=item." ";
    }
    if (widget.item is GroupEntity) {
      GroupEntity item = widget.item as GroupEntity;
      id = item.groupOid;
      title = item.name;
      isLike=item.isLikes;
      subtitle = item.speciality ?? " ";
    }
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
      trailing: IconButton(
        onPressed: () {
          context.read<AuthCubit>().addLike(widget.item);

          setState(() {
          isLike=!isLike;
          });
        },
        icon: Icon(CupertinoIcons.heart_fill,color:isLike!=false?Colors.blueAccent:Colors.white70 ,),
      ),
    );
  }
}
