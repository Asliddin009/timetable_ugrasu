import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/app/utils/color_hex.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';


// ignore: must_be_immutable
class TimetableTile extends StatelessWidget {
  TimetableTile({
    super.key,
    required this.lessonEntity,
  });

  LessonEntity lessonEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 150, //MediaQuery.of(context).size.height/12,
      decoration: BoxDecoration(
          color: HexColor.fromHex('#7483B7'),
          borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(25),
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "assets/dark_theme/cat.png",
                fit: BoxFit.fitHeight,
                height: 60,
              )),
          Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 5,
                      top: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: getColorForContentTableOfLessonsName(
                                  lessonEntity.kindOfWork)),
                          child: Center(
                              child: Text(
                            lessonEntity.contentTableOfLessonsName,
                            style: TextStyle(
                                fontSize: 13,
                                color: lessonEntity.kindOfWork ==
                                        "Практические (семинарские занятия)"
                                    ? Colors.black87
                                    : Colors.white),
                          )),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "${lessonEntity.beginLesson}-${lessonEntity.endLesson}",
                          style: const TextStyle(color: Colors.white54),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                      padding:
                          const EdgeInsets.only(right: 8.0, left: 8, top: 8),
                      alignment: Alignment.centerLeft,
                      child: Text(lessonEntity.discipline,
                          style: const TextStyle(fontSize: 15)))),
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(
                        right: 8.0, left: 8, top: 1, bottom: 1),
                    alignment: Alignment.topLeft,
                    child: Text(
                      lessonEntity.kindOfWork,
                      style: TextStyle(color: Colors.white54, fontSize: 13),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.only(
                      right: 8.0,
                      left: 8,
                      top: 8,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.person,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          lessonEntity.lecturer,
                          style: TextStyle(color: Colors.white54),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.only(
                      right: 12.0,
                      left: 12,
                      bottom: 7,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Кабинет ${lessonEntity.auditorium}",
                      style: TextStyle(color: Colors.white54),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Color getColorForContentTableOfLessonsName(String lessonType) {
    return switch (lessonType) {
      ("Лекция") => Colors.green.shade800,
      ("Практические (семинарские занятия)") => Colors.yellow,
      ('Лабораторные работы') => Colors.blueAccent.shade700,
      (_) => Colors.yellow.shade900
    };
  }
}
