import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';
import 'package:timetable_ugrasu/features/timetable/ui/components/bottom_sheet_timetable.dart';
import 'package:timetable_ugrasu/features/timetable/ui/components/timetable_tile.dart';

import '../../../../app/utils/get_date_time.dart';

// ignore: must_be_immutable
class TimetableContainer extends StatelessWidget {
  TimetableContainer(
      {super.key, required this.listLessons, required this.dateTimeNow});

  DateTime dateTimeNow;
  List<LessonEntity> listLessons;

  @override
  Widget build(BuildContext context) {
    final title = UtilsDate.getTitleForTimetableTile(dateTimeNow);
    double height = 40 + 172 * listLessons.length.toDouble();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        SizedBox(
          height: height,
          child: listLessons.isNotEmpty
              ? ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        showBottomSheetTimetable(context, listLessons[index]);
                      },
                      child: TimetableTile(
                        lessonEntity: listLessons[index],
                      ),
                    );
                  },
                  itemCount: listLessons.length,
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Занятий нет",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
        )
      ],
    );
  }
}
