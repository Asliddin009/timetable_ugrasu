import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/search_bloc/search_cubit.dart';

class Ver1 extends StatelessWidget {
  SearchState state;

  Ver1({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.indigo),
        child: ListView.separated(
          itemCount: state.listGroupEntity.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              //width: 150,
              child: ListTile(
                title: Text(state.listGroupEntity[index].name.toString()),
                subtitle:
                    Text(state.listGroupEntity[index].speciality.toString()),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
        ),
      ),
    );
  }
}
