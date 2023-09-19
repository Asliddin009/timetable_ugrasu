import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/app/ui/utils/get_date_time.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';

class TimetableTile extends StatelessWidget {
  TimetableTile(
      {super.key, required this.dateTimeNow, required this.listLessons});

  DateTime dateTimeNow;
  List<LessonEntity> listLessons;

  @override
  Widget build(BuildContext context) {
    final title = UtilsDate.getTitleForTimetableTile(dateTimeNow);
    double height = 40 + 122 * listLessons.length.toDouble();
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
        Container(
          height: height,
          child: listLessons.length > 0
              ? ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        showBottomSheet(
                            context: context,
                            builder: (context) => Container(
                                  height: 200,
                             width: double.infinity,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(25),
                               color:  Theme.of(context).scaffoldBackgroundColor
                             ),
                             child: Column(
                               children: [
                                 const Expanded(child: Row(

                                 )),
                                 Expanded(
                                   flex: 4,
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       ElevatedButton(onPressed: (){}, child: const Text("Поставить Уведомление"),),
                                       ElevatedButton(onPressed: (){}, child: const Text("Не отображать")),
                                       ElevatedButton(onPressed: (){}, child: const Text("Перейти к Преподавателю"))

                                     ],
                                   ),
                                 ),
                               ],
                             ),
                                ));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        height: 100, //MediaQuery.of(context).size.height/12,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          children: [
                            Text(listLessons[index].beginLesson),
                            Text(listLessons[index].endLesson)
                          ],
                        ),
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
