import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/app/const/color_const.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';

// ignore: must_be_immutable
class TimetableBottomSheet extends StatelessWidget {
  TimetableBottomSheet({required this.context, required this.lessonEntity,super.key});
  BuildContext context;
  LessonEntity lessonEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
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
                      icon: const Icon(Icons.navigate_before)),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width*0.8,
                    alignment: Alignment.center,
                    child: Text(
                        lessonEntity.discipline,
                        textDirection: TextDirection.ltr,
                        overflow: TextOverflow.ellipsis
                    ),
                  )
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
    );
  }
}
