import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/app/const/color_const.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';

void showBottomSheetTimetable(BuildContext context, LessonEntity lessonEntity) {
  showBottomSheet(
      context: context,
      builder: (context) => Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ConstColor.DARK_APP_TIMETABLE_COLOR),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.navigate_before))
                    ,
                    Text(lessonEntity.discipline)
                  ],
                )),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Поставить Уведомление"),
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Не отображать")),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text("Перейти к Преподавателю"))
                    ],
                  ),
                ),
              ],
            ),
          ));
}
