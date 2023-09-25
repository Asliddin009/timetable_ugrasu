abstract class UtilsDate {
  static String getFromdate() {
    int weekday = DateTime.now().weekday - 1;
    return convertDateTimeToString(DateTime(DateTime.now().year,
        DateTime.now().month, DateTime.now().day - weekday));
  }

  static String getTodate() {
    int weekday = 7 - DateTime.now().weekday;
    return convertDateTimeToString(DateTime(DateTime.now().year,
        DateTime.now().month, DateTime.now().day + weekday));
  }

  static DateTime convertStringToDateTime(String yyyymmdd) {
    int yyyy = int.parse(yyyymmdd.substring(0, 4));
    int mm = int.parse(yyyymmdd.substring(5, 7));
    int dd = int.parse(yyyymmdd.substring(8, 10));
    late DateTime dateTimeObject;
    dateTimeObject = DateTime(yyyy, mm, dd);
    return dateTimeObject;
  }

  static DateTime addDay(DateTime now, int day) =>
      DateTime(now.year, now.month, now.day + day);

  static String convertDateTimeToString(DateTime dateTime) {
    String year = dateTime.year.toString();

    String month = dateTime.month.toString();
    if (month.length == 1) {
      month = '0$month';
    }

    String day = dateTime.day.toString();
    if (day.length == 1) {
      day = '0$day';
    }

    String ddmmyyyy = "$year-$month-$day";
    return ddmmyyyy;
  }

  static String convertDateTimeToString2(DateTime dateTime) {
    String month = getMonthName(dateTime.month);
    String day = dateTime.day.toString();
    String ddmm = "$day $month";
    return ddmm;
  }

  static String getTitleForTimetableTile(DateTime dateTime) {
    final month = getMonthName(dateTime.month);
    final weekday = getWeekDay(dateTime.weekday);
    return "${dateTime.day} $month, $weekday";
  }

  //
  static String getWeekDay(int day) {
    return switch (day) {
      (1) => "Понедельник",
      (2) => "Вторник",
      (3) => "Среда",
      (4) => "Четверг",
      (5) => "Пятница",
      (6) => "Суббота",
      (7) => "Воскресенье",
      _ => "Неизвестный день недели"
    };
  }

  static String getMonthName(int month) {
    switch (month) {
      case (1):
        {
          return "Января";
        }
      case (2):
        {
          return "Февраля";
        }
      case (3):
        {
          return "Марта";
        }
      case (4):
        {
          return "Апреля";
        }
      case (5):
        {
          return "Мая";
        }
      case (6):
        {
          return "Июня";
        }
      case (7):
        {
          return "Июля";
        }
      case (8):
        {
          return "Августа";
        }
      case (9):
        {
          return "Сентября";
        }
      case (10):
        {
          return "Октября";
        }
      case (11):
        {
          return "Ноября";
        }
      case (12):
        {
          return "Декабря";
        }
    }
    return "Мая";
  }

  static String getLabelForTimetable(
      DateTime fromData, DateTime toData, bool isRight) {
    final newFromData = DateTime(fromData.year, fromData.month,
        isRight ? fromData.day + 7 : fromData.day - 7);
    final newToData = DateTime(
        toData.year, toData.month, isRight ? toData.day + 7 : toData.day - 7);
    return '${convertDateTimeToString(newFromData)} - ${convertDateTimeToString(newToData)}';
  }
}
