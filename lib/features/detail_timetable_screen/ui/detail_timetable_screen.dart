import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/features/detail_timetable_screen/ui/components/header_container.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';
class DetailTimetableScreen extends StatelessWidget {
  const DetailTimetableScreen({super.key,required this.lessonEntity});
  final LessonEntity lessonEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
          DetailTimetableHeader (
            title: lessonEntity.contentTableOfLessonsName,
          ),
      ],),
    );
  }
}


