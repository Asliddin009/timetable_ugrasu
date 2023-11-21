import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:timetable_ugrasu/app/const/color_const.dart';
import 'package:timetable_ugrasu/app/ui/app_snak_bar.dart';
import 'package:timetable_ugrasu/app/utils/get_date_time.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';
import 'dart:math' as Math;
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

// ignore: must_be_immutable
class TimetableBottomSheet extends StatelessWidget {
  TimetableBottomSheet(
      {required this.context, required this.lessonEntity, super.key});

  BuildContext context;
  LessonEntity lessonEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
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
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.center,
                child: Text(lessonEntity.discipline,
                    textDirection: TextDirection.ltr,
                    overflow: TextOverflow.ellipsis),
              )
            ],
          )),
          Expanded(
            flex: 4,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                      //todo добавить функицию для уведомления
                  },
                  child:  Container(
                    child: Text("Получить детальную информацию"),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //todo добавить функицию для уведомления
                  },
                  child:  Container(
                    child: Text("Поставить Уведомление"),
                  ),
                ),
                TextButton(
                    onPressed: () async {
                      //Можно еще тут добавить анимацию загрузки
                      final position = await _determinePosition();
                      final (title, message, contentType) =
                          checkPositionForMark(position, lessonEntity);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          elevation: 0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.transparent,
                          duration: const Duration(seconds: 2),
                          content: AppSnackBar(
                            title: title,
                            contentType: contentType,
                            message: message,
                          )));
                    },
                    child: const Text("Отметиться на паре")),
                TextButton(
                    onPressed: () {},
                    child: const Text("Перейти к расписанию Преподавателю"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

(String, String, ContentType) checkPositionForMark(
    Position currentPosition, LessonEntity lessonEntity,
    {x = 61.001461, y = 69.028657}) {
  if (checkDate(lessonEntity.date, lessonEntity.beginLesson,
          lessonEntity.endLesson) ==
      false) {
    return (
      "Ошибка",
      'Пара еще не началась',
      ContentType.failure
    );
  }
  final latitudeDiff = (x - currentPosition.latitude).abs();
  final longitudeDiff = (y - currentPosition.longitude).abs();

  final res =
      Math.sqrt(latitudeDiff * latitudeDiff + longitudeDiff * longitudeDiff);
  if (res < 0.005) {
    return ("Успешно", "Вы были отмечаны на паре", ContentType.success);
  } else {
    return (
      "Ошибка",
      'Вы должны быть в вузе чтобы отметиться',
      ContentType.failure
    );
  }
}

bool checkDate(String date, String beginLesson, String endLesson) {
  try {
    final dateLesson = UtilsDate.convertStringToDateTime(date);
    if (dateLesson.month != DateTime.now().month ||
        dateLesson.day != DateTime.now().day) return false;
    final dateStart = int.parse(beginLesson.split(":")[0]) * 60 +
        int.parse(beginLesson.split(':')[1]);
    final dateEnd = int.parse(endLesson.split(":")[0]) * 60 +
        int.parse(endLesson.split(":")[1]);
    final dateNow = DateTime.now().hour * 60 + DateTime.now().minute;
    if (dateStart < dateNow && dateNow < dateEnd) {
      return true;
    } else {
      return false;
    }
  } catch (error) {
    log("Ошибка в методе checkDate в файле bottom_sheet_timetable");
    return false;
  }
}

Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
