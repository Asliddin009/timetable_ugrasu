abstract class UtilsDate{
  static String getFromdate(){
    int weekday = DateTime.now().weekday - 1;
    return convertDateTimeToString(DateTime(DateTime.now().year,
        DateTime.now().month, DateTime.now().day - weekday));
  }

  static String getTodate() {
    int weekday = 7 - DateTime.now().weekday;
    return convertDateTimeToString(DateTime(DateTime.now().year,
        DateTime.now().month, DateTime.now().day + weekday));
  }


  static DateTime convertStringToDateTime(String yyyymmdd, bool? bool) {
    int yyyy = int.parse(yyyymmdd.substring(0, 4));
    int mm = int.parse(yyyymmdd.substring(5, 7));
    int dd = int.parse(yyyymmdd.substring(8, 10));
    late DateTime dateTimeObject;
    // если null то ничего не делаем, если false
    // то -7 дней, если true то +7 дней
    if (bool == null) {
      dateTimeObject = DateTime(yyyy, mm, dd);
    }
    if (bool == false) {
      dateTimeObject = DateTime(yyyy, mm, dd - 7);
    }
    if (bool == true) {
      dateTimeObject = DateTime(yyyy, mm, dd + 7);
    }
    return dateTimeObject;
  }



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


  String convertDateTimeToString2(DateTime dateTime) {
    String month = getMonthName(dateTime.month);
    String day = dateTime.day.toString();
    String ddmm = "$day $month";
    return ddmm;
  }

  String getMonthName(int month) {
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
}