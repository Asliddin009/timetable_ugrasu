import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/app/ui/app_loaded.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/search_bloc/search_cubit.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/auditorium_entity/auditorium_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lecturer_entity/lecturer_entity.dart';

import '../domain/entity/group_entity/group_entity.dart';
import 'components/search_list_tile/search_list_tile.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();
  List<dynamic> listEntity = [];

  @override
  void initState() {
    final searchCubit = context.read<SearchCubit>();
    if (context.read<SearchCubit>().state.listGroupEntity.isEmpty) {
      context.read<SearchCubit>().featchGroups(true).then((value) {
        listEntity.addAll(searchCubit.state.listGroupEntity);
        setState(() {});
      });
    } else {
      listEntity.addAll(searchCubit.state.listGroupEntity);
    }
   if (context.read<SearchCubit>().state.listAuditoriumEntity.isEmpty) {
      context.read<SearchCubit>().featchAuditoriums(true).then((value) {
        listEntity.addAll(searchCubit.state.listAuditoriumEntity) ;
        setState(() {});
      });
    } else {
      listEntity.addAll(searchCubit.state.listAuditoriumEntity);
    }
    if (context.read<SearchCubit>().state.listLecturerEntity.isEmpty) {
      context.read<SearchCubit>().featchLectures(true).then((value) {
        listEntity.addAll(searchCubit.state.listLecturerEntity);
        setState(() {});
      });
    } else {
      listEntity.addAll(searchCubit.state.listLecturerEntity);
    }

  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.asyncSnapshot!=const AsyncSnapshot.waiting()) {
            return Scaffold(
              body: Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        title: const Center(
                            child: Text(
                          "Югу Расписание",
                          style: TextStyle(fontSize: 25, letterSpacing: 2),
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
                                    listEntity=[];
                                    listEntity.addAll(state.listGroupEntity
                                        .where((element) =>
                                            element.name.contains(value))
                                        .toList());

                                    listEntity.addAll(state.listLecturerEntity
                                        .where((element) =>
                                        element.fio.toUpperCase().contains(value.toUpperCase()))
                                        .toList());

                                    listEntity.addAll(state.listAuditoriumEntity
                                        .where((element) =>
                                        (element.number??" ").contains(value))
                                        .toList());

                                    setState(() {});
                                  },
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.search),
                                    labelStyle: TextStyle(letterSpacing: 2),
                                    labelText: 'Поиск...',
                                    border: OutlineInputBorder(),
                                  )),
                            )),
                        actions: [
                          IconButton(
                              onPressed: () {
                                context.read<SearchCubit>().logout();
                                setState(() {});
                              },
                              icon: const Icon(Icons.logout)),
                          IconButton(
                              onPressed: () {
                                context.read<SearchCubit>()
                                  ..logout()
                                  ..featchGroups(false);
                                setState(() {});
                              },
                              icon: const Icon(Icons.refresh))
                        ],
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return SearchListTile(item: listEntity[index], indexOdd: index.isOdd,);
                          },
                          childCount: listEntity.length,
                        ),
                      ),
                    ],
                  ),
                   Container(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        "assets/dark_theme/main_screen_icon.png",
                        fit: BoxFit.fitHeight,
                        height: 200,
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