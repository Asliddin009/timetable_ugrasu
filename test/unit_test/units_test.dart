import 'package:flutter_test/flutter_test.dart';
import 'package:timetable_ugrasu/app/data/test_app_api.dart';
import 'package:timetable_ugrasu/features/timetable/data/net_timetable_repo.dart';

void main() {
  group("тестирование NetTimetableRepo ", () {
    //Групы
    test('Проверка функции getGroups из Assets', () async {
      NetTimetableRepo(TestAppApi()).getGroups(true).then((value) {
        Map<String, dynamic> jsonTest = {
          "FormOfEducationGid": 1,
          "FormOfEducationOid": 3,
          "SpecialityGid": 168334,
          "SpecialityOid": 135,
          "YearOfEducation": 2023,
          "amount": 0,
          "chairGid": 0,
          "chairOid": 0,
          "course": 4,
          "faculty": "ИНЖЕНЕРНАЯ ШКОЛА ЦИФРОВЫХ ТЕХНОЛОГИЙ",
          "facultyGid": 0,
          "facultyOid": 226,
          "formOfEducation": "Очное обучение",
          "groupGUID": "7cfa5830-188e-4606-950d-b1eff2144a67",
          "groupGid": 281474976714429,
          "groupOid": 7233,
          "groupUID": null,
          "kindEducation": 0,
          "name": "1101б",
          "number": "1101б",
          "plannedamount": 26,
          "speciality": "Информатика и вычислительная техника"
        };
        expect(value[0], jsonTest);
      });
    });
    //Преподаватели
    test('Проверка функции getLectures из Assets', () async {
      NetTimetableRepo(TestAppApi()).getLectures(true).then((value) {
        Map<String, dynamic> jsonTest = {
          "availability": 1,
          "chair": "ППС ИнТех",
          "chairGid": 101,
          "chairOid": 303,
          "email": null,
          "fio": "Абдуллаев Т.Г.о.",
          "lecturerCustomUID": null,
          "lecturerGUID": "6d2297ab-2ca4-4ad8-ba75-0f60445895c6",
          "lecturerGid": 1345,
          "lecturerOid": 5819,
          "lecturerUID": null,
          "lecturer_rank": null,
          "person": null,
          "shortFIO": "Абдуллаев Т.Г."
        };
        expect(value[0], jsonTest);
      });
    });
    //Аудитории
    test('Проверка функции getGroups из Assets', () async {
      NetTimetableRepo(TestAppApi()).getAuditoriums(true).then((value) {
        Map<String, dynamic> jsonTest = {
          "TypeOfAuditoriumOid": 22,
          "amount": 0,
          "auditoriumGUID": "5ac13a13-0d3e-4c9b-949b-525dbac361a3",
          "auditoriumGid": 0,
          "auditoriumOid": 2045,
          "auditoriumUID": null,
          "building": "Главный корпус (ИНТех)",
          "buildingGid": 2,
          "buildingOid": 186,
          "computerEquipment": 0,
          "equipment": 0,
          "hideincapacity": 0,
          "mediaEquipment": 0,
          "name": "..",
          "number": "..",
          "tableType": 0,
          "typeOfAuditorium": "Учебная аудитория"
        };
        expect(value[0], jsonTest);
      });
    });
  });
}
