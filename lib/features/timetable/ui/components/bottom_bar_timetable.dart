import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/app/const/color_const.dart';
import 'package:timetable_ugrasu/app/di/init_di.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/search_bloc/search_cubit.dart';

class AppSearchDelegate extends SearchDelegate{
  // Demo list to show querying


  List<String> searchTerms = locator.get<SearchCubit>().state.listGroupEntity.map((e) => e.name).toList();

  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Padding(
          padding: EdgeInsets.all(7),
          child: ListTile
            (
            title: Text(result),
          ),
        );
      },
    );
  }
}