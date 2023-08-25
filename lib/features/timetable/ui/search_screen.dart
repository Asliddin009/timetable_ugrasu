import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/app/di/init_di.dart';
import 'package:timetable_ugrasu/app/ui/app_loaded.dart';
import 'package:timetable_ugrasu/app/ui/utils/get_date_time.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/search_bloc/search_cubit.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/timetable_bloc/timetable_cubit.dart';
import 'package:timetable_ugrasu/features/timetable/ui/timetable_screen.dart';

import '../domain/entity/group_entity/group_entity.dart';
import 'components/app_bar_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    final searchCubit = context.read<SearchCubit>();
    //Отпраляем запросы если стайт пустой
    if (context.read<SearchCubit>().state.listGroupEntity.isEmpty) {
      context.read<SearchCubit>().featchGroups();
    }
    listGroup = searchCubit.state.listGroupEntity;
    if (context.read<SearchCubit>().state.listGroupEntity.isEmpty) {
      context.read<SearchCubit>().featchGroups();
    }
    if (context.read<SearchCubit>().state.listGroupEntity.isEmpty) {
      context.read<SearchCubit>().featchGroups();
    }
  }

  TextEditingController controller = TextEditingController();
  List<GroupEntity> listGroup = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.listGroupEntity.isNotEmpty) {
            return Scaffold(
              body: Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        title: Center(
                            child: Text(
                          "Югу Расписание",
                          style: Theme.of(context).textTheme.displayMedium,
                        )),
                        //pinned: true,
                        snap: true,
                        floating: true,
                        bottom: PreferredSize(
                            preferredSize: const Size.fromHeight(70),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                  onChanged: (value) {
                                    listGroup = state.listGroupEntity
                                        .where((element) =>
                                            element.name.contains(value))
                                        .toList();
                                    setState(() {});
                                  },
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.search),
                                    labelStyle: TextStyle(
                                        letterSpacing: 3,
                                        fontWeight: FontWeight.w600),
                                    labelText: 'Поиск...',
                                    border: OutlineInputBorder(),
                                  )),
                            )),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return ListTile(
                              onTap: () {
                                int groupOid = listGroup[index].groupOid;
                                String fromDate = UtilsDate.getFromdate();
                                String toDate = UtilsDate.getTodate();
                                log("id= $groupOid, fromDate=$fromDate, toDate= $toDate}");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TimetableScreen(toDate: toDate, fromDate: fromDate, groupOid: groupOid,)));
                              },
                              leading: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.star),
                              ),
                              tileColor:
                                  index.isOdd ? Colors.indigo : Colors.black12,
                              title: Text(
                                listGroup[index].name.toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 2,
                                ),
                              ),
                              subtitle:
                                  Text(listGroup[index].speciality.toString()),
                            );
                          },
                          childCount: listGroup.length,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "assets/dark_theme/main_screen_icon.png",
                        fit: BoxFit.fitHeight,
                        height: 250,
                      ))
                ],
              ),
            );
          }
          if (state.asyncSnapshot?.connectionState ==
              ConnectionState.waiting) {}
          return const AppLoader();
        });
  }
}

/*

Container(
                                alignment: Alignment.bottomCenter,
                                padding: EdgeInsets.only(
                                    bottom: 20, left: 20, right: 20),
                                child: TextFormField(
                                    decoration: const InputDecoration(
                                  labelText: 'Введите номер группы',
                                  border: OutlineInputBorder(),
                                )),
                              )


*/

/*

* */
