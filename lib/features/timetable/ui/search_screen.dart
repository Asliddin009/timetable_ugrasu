import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetable_ugrasu/app/ui/app_loaded.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/search_bloc/search_cubit.dart';

import 'components/app_bar_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    context.read<SearchCubit>().featchGroups();
  }

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.listGroupEntity.isNotEmpty) {
            return Scaffold(
                body: Column(
              children: [
                //ListView and TextField
                Expanded(
                    flex: 6,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: SearchInputFb2(searchController: controller, hintText: 'Введите номер группы',)),
                          Expanded(
                              flex: 4,
                              child: ListView.builder(
                                  itemCount: state.listGroupEntity.length,
                                  itemBuilder: (context, index) => Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child:
                                        Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: Colors.indigo,
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          width: 50,
                                        child: Text(state.listGroupEntity[index].name),
                                        ),
                                      )))
                        ],
                      ),
                    )),
                //icon
                Expanded(
                    flex: 4,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                              //НА будущее
                              ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                              'assets/dark_theme/main_screen_icon.png',
                              fit: BoxFit.fill,
                              height: 400,
                              alignment: Alignment.bottomRight,
                            ))
                      ],
                    )),
                //icon
              ],
            ));
          }
          if (state.asyncSnapshot?.connectionState ==
              ConnectionState.waiting) {}
          return AppLoader();
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
